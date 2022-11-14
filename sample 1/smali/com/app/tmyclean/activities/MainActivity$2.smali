.class Lcom/app/tmyclean/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 150
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 180
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 154
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$000(Lcom/app/tmyclean/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$000(Lcom/app/tmyclean/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 164
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$000(Lcom/app/tmyclean/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, v0, Lcom/app/tmyclean/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    .line 166
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$100(Lcom/app/tmyclean/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f009e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$100(Lcom/app/tmyclean/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f009f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$100(Lcom/app/tmyclean/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$2;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-static {v0}, Lcom/app/tmyclean/activities/MainActivity;->access$100(Lcom/app/tmyclean/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 175
    :goto_1
    return-void
.end method
