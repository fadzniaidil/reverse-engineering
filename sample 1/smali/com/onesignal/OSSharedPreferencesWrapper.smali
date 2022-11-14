.class Lcom/onesignal/OSSharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "OSSharedPreferencesWrapper.java"

# interfaces
.implements Lcom/onesignal/OSSharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .line 32
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 42
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/Object;

    .line 73
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutcomesV2KeyName()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "PREFS_OS_OUTCOMES_V2"

    return-object v0
.end method

.method public getPreferencesName()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .line 22
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    .local p3, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 37
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public saveInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 47
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public saveLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 57
    invoke-static {p1, p2, p3, p4}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 58
    return-void
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 78
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 27
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 69
    return-void
.end method
