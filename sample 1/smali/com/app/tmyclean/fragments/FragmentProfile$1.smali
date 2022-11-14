.class Lcom/app/tmyclean/fragments/FragmentProfile$1;
.super Ljava/lang/Object;
.source "FragmentProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentProfile;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentProfile;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentProfile;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$1;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$1;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v1}, Lcom/app/tmyclean/fragments/FragmentProfile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivitySettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$1;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/fragments/FragmentProfile;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
