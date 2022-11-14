.class Lcom/app/tmyclean/fragments/FragmentProfile$4;
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

    .line 81
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$4;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile$4;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v0}, Lcom/app/tmyclean/fragments/FragmentProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "share_text":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentProfile$4;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v3}, Lcom/app/tmyclean/fragments/FragmentProfile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/app/tmyclean/fragments/FragmentProfile$4;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v2, v1}, Lcom/app/tmyclean/fragments/FragmentProfile;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
