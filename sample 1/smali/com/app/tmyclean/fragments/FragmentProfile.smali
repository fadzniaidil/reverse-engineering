.class public Lcom/app/tmyclean/fragments/FragmentProfile;
.super Landroidx/fragment/app/Fragment;
.source "FragmentProfile.java"


# instance fields
.field btn_edit_user:Lcom/balysv/materialripple/MaterialRippleLayout;

.field btn_order_history:Lcom/balysv/materialripple/MaterialRippleLayout;

.field btn_privacy:Lcom/balysv/materialripple/MaterialRippleLayout;

.field btn_rate:Lcom/balysv/materialripple/MaterialRippleLayout;

.field btn_share:Lcom/balysv/materialripple/MaterialRippleLayout;

.field lyt_root:Landroid/widget/LinearLayout;

.field private sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

.field txt_user_address:Landroid/widget/TextView;

.field txt_user_email:Landroid/widget/TextView;

.field txt_user_name:Landroid/widget/TextView;

.field txt_user_phone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 35
    const v0, 0x7f0b0038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentProfile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/app/tmyclean/utilities/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    .line 39
    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->lyt_root:Landroid/widget/LinearLayout;

    .line 44
    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_name:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_email:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_phone:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_address:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->btn_edit_user:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 50
    new-instance v2, Lcom/app/tmyclean/fragments/FragmentProfile$1;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentProfile$1;-><init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V

    invoke-virtual {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->btn_order_history:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 59
    new-instance v2, Lcom/app/tmyclean/fragments/FragmentProfile$2;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentProfile$2;-><init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V

    invoke-virtual {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->btn_rate:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 68
    new-instance v2, Lcom/app/tmyclean/fragments/FragmentProfile$3;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentProfile$3;-><init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V

    invoke-virtual {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->btn_share:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 81
    new-instance v2, Lcom/app/tmyclean/fragments/FragmentProfile$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentProfile$4;-><init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V

    invoke-virtual {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->btn_privacy:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 94
    new-instance v2, Lcom/app/tmyclean/fragments/FragmentProfile$5;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentProfile$5;-><init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V

    invoke-virtual {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_email:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->txt_user_address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 111
    return-void
.end method
