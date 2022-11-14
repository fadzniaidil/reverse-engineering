.class public Lcom/app/tmyclean/utilities/SharedPref;
.super Ljava/lang/Object;
.source "SharedPref.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private default_prefence:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/app/tmyclean/utilities/SharedPref;->ctx:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method private str(I)Ljava/lang/String;
    .locals 1
    .param p1, "string_id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string_id"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getYourAddress()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    const v1, 0x7f0f008a

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f004f

    invoke-direct {p0, v2}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYourEmail()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    const v1, 0x7f0f008b

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0050

    invoke-direct {p0, v2}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYourName()Ljava/lang/String;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    const v1, 0x7f0f008c

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0051

    invoke-direct {p0, v2}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYourPhone()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    const v1, 0x7f0f008d

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0052

    invoke-direct {p0, v2}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setYourAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f008a

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    return-void
.end method

.method public setYourEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f008b

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    return-void
.end method

.method public setYourName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f008c

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method

.method public setYourPhone(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/app/tmyclean/utilities/SharedPref;->default_prefence:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-direct {p0, v1}, Lcom/app/tmyclean/utilities/SharedPref;->str(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void
.end method
