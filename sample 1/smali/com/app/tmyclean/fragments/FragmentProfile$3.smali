.class Lcom/app/tmyclean/fragments/FragmentProfile$3;
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

    .line 68
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$3;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 71
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentProfile$3;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    invoke-virtual {v1}, Lcom/app/tmyclean/fragments/FragmentProfile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/app/tmyclean/fragments/FragmentProfile$3;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/app/tmyclean/fragments/FragmentProfile;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentProfile$3;->this$0:Lcom/app/tmyclean/fragments/FragmentProfile;

    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/app/tmyclean/fragments/FragmentProfile;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
