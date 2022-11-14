.class public Lcom/app/tmyclean/activities/ActivitySettings;
.super Landroid/preference/PreferenceActivity;
.source "ActivitySettings.java"


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private parent_view:Landroid/view/View;

.field private sharedPref:Lcom/app/tmyclean/utilities/SharedPref;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivitySettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivitySettings;

    .line 33
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->parent_view:Landroid/view/View;

    return-object v0
.end method

.method private getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-object v0
.end method

.method private initToolbar()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 143
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0f00a2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 228
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 210
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 42
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v0, 0x7f120000

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySettings;->addPreferencesFromResource(I)V

    .line 45
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->parent_view:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/app/tmyclean/utilities/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/utilities/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySettings;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    .line 55
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 56
    .local v0, "prefName":Landroid/preference/EditTextPreference;
    const v1, 0x7f0f008b

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 57
    .local v1, "prefEmail":Landroid/preference/EditTextPreference;
    const v2, 0x7f0f008d

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 58
    .local v2, "prefPhone":Landroid/preference/EditTextPreference;
    const v3, 0x7f0f008a

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 60
    .local v3, "prefAddress":Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivitySettings;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v4}, Lcom/app/tmyclean/utilities/SharedPref;->getYourName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v4, Lcom/app/tmyclean/activities/ActivitySettings$1;

    invoke-direct {v4, p0, v0}, Lcom/app/tmyclean/activities/ActivitySettings$1;-><init>(Lcom/app/tmyclean/activities/ActivitySettings;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivitySettings;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v4}, Lcom/app/tmyclean/utilities/SharedPref;->getYourEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v4, Lcom/app/tmyclean/activities/ActivitySettings$2;

    invoke-direct {v4, p0, v1}, Lcom/app/tmyclean/activities/ActivitySettings$2;-><init>(Lcom/app/tmyclean/activities/ActivitySettings;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivitySettings;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v4}, Lcom/app/tmyclean/utilities/SharedPref;->getYourPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v4, Lcom/app/tmyclean/activities/ActivitySettings$3;

    invoke-direct {v4, p0, v2}, Lcom/app/tmyclean/activities/ActivitySettings$3;-><init>(Lcom/app/tmyclean/activities/ActivitySettings;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivitySettings;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v4}, Lcom/app/tmyclean/utilities/SharedPref;->getYourAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v4, Lcom/app/tmyclean/activities/ActivitySettings$4;

    invoke-direct {v4, p0, v3}, Lcom/app/tmyclean/activities/ActivitySettings$4;-><init>(Lcom/app/tmyclean/activities/ActivitySettings;Landroid/preference/EditTextPreference;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->initToolbar()V

    .line 133
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 223
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->onBackPressed()V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 199
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    .line 200
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 217
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 218
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "color"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 205
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 179
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolbar"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivitySettings;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 169
    return-void
.end method
