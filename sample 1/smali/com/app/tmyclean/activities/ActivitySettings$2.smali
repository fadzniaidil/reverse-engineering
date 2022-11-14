.class Lcom/app/tmyclean/activities/ActivitySettings$2;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivitySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivitySettings;

.field final synthetic val$prefEmail:Landroid/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivitySettings;Landroid/preference/EditTextPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivitySettings;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$prefEmail"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivitySettings$2;->this$0:Lcom/app/tmyclean/activities/ActivitySettings;

    iput-object p2, p0, Lcom/app/tmyclean/activities/ActivitySettings$2;->val$prefEmail:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "o"
        }
    .end annotation

    .line 82
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/app/tmyclean/utilities/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivitySettings$2;->val$prefEmail:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v1, 0x1

    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivitySettings$2;->this$0:Lcom/app/tmyclean/activities/ActivitySettings;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivitySettings;->access$000(Lcom/app/tmyclean/activities/ActivitySettings;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0087

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    .line 88
    .local v1, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080115

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 91
    return v3
.end method
