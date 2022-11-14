.class Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
.super Landroid/view/View$BaseSavedState;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnimateProgress:Z

.field mCurrentProgress:F

.field mProgress:I

.field mProgressBackgroundColor:I

.field mProgressBarEnabled:Z

.field mProgressBarVisibilityChanged:Z

.field mProgressColor:I

.field mProgressIndeterminate:Z

.field mProgressWidth:I

.field mShouldProgressIndeterminate:Z

.field mShouldSetProgress:Z

.field mShowProgressBackground:Z

.field mSpinSpeed:F

.field mTargetProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 777
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;

    invoke-direct {v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;-><init>()V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 741
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mCurrentProgress:F

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mTargetProgress:F

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBarEnabled:Z

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mSpinSpeed:F

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgress:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressWidth:I

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressColor:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBackgroundColor:I

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBarVisibilityChanged:Z

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressIndeterminate:Z

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldProgressIndeterminate:Z

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldSetProgress:Z

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mAnimateProgress:Z

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShowProgressBackground:Z

    .line 756
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/clans/fab/FloatingActionButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/github/clans/fab/FloatingActionButton$1;

    .line 719
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 737
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 738
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 760
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 761
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mCurrentProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 762
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mTargetProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 763
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBarEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mSpinSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 765
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBarVisibilityChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressIndeterminate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldProgressIndeterminate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldSetProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mAnimateProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShowProgressBackground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    return-void
.end method
