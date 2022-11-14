.class public Lcom/app/tmyclean/activities/MainActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/MainActivity;
    .param p2, "fm"    # Landroidx/fragment/app/FragmentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "fm"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$MyAdapter;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 215
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$MyAdapter;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget v0, v0, Lcom/app/tmyclean/activities/MainActivity;->pager_number:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 228
    :pswitch_0
    new-instance v0, Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-direct {v0}, Lcom/app/tmyclean/fragments/FragmentProfile;-><init>()V

    return-object v0

    .line 226
    :pswitch_1
    new-instance v0, Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-direct {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;-><init>()V

    return-object v0

    .line 224
    :pswitch_2
    new-instance v0, Lcom/app/tmyclean/fragments/FragmentCategory;

    invoke-direct {v0}, Lcom/app/tmyclean/fragments/FragmentCategory;-><init>()V

    return-object v0

    .line 222
    :pswitch_3
    new-instance v0, Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-direct {v0}, Lcom/app/tmyclean/fragments/FragmentRecent;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
