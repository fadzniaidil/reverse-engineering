.class Lcom/app/tmyclean/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$1;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 146
    return v1

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$1;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 135
    return v2

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$1;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 144
    return v2

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$1;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 141
    return v2

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$1;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 138
    return v2

    :pswitch_data_0
    .packed-switch 0x7f0800c3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
