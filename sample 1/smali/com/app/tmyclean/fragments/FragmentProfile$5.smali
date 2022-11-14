.class Lcom/app/tmyclean/fragments/FragmentProfile$5;
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

    .line 94
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$5;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

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

    .line 97
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentProfile$5;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/app/tmyclean/fragments/FragmentProfile$5;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    const v3, 0x7f0f008f

    invoke-virtual {v2, v3}, Lcom/app/tmyclean/fragments/FragmentProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/fragments/FragmentProfile;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
