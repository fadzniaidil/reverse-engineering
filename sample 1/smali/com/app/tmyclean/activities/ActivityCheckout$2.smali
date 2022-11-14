.class Lcom/app/tmyclean/activities/ActivityCheckout$2;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCheckout;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "calenderInstance":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 132
    .local v1, "hr":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 133
    .local v9, "min":I
    new-instance v5, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;

    invoke-direct {v5, p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout$2;Ljava/util/Calendar;)V

    .line 143
    .local v5, "onTimeListner":Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v10, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    const v4, 0x1030075

    const/4 v8, 0x1

    move-object v2, v10

    move v6, v1

    move v7, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 146
    .local v2, "timePickerDialog":Landroid/app/TimePickerDialog;
    const-string v3, "Set Time"

    invoke-virtual {v2, v3}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v2}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/view/Window;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 148
    invoke-virtual {v2}, Landroid/app/TimePickerDialog;->show()V

    .line 149
    return-void
.end method
