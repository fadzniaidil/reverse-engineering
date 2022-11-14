.class Lcom/app/tmyclean/activities/ActivityCheckout$2$1;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityCheckout$2;

.field final synthetic val$calenderInstance:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout$2;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityCheckout$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$calenderInstance"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$2;

    iput-object p2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;->val$calenderInstance:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "hourOfDay",
            "minute"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Landroid/widget/TimePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;->val$calenderInstance:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 138
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;->val$calenderInstance:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 139
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$2$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$2;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout$2;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->editTime:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method
