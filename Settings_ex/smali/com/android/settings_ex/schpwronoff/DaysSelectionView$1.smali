.class Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;
.super Ljava/lang/Object;
.source "DaysSelectionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/DaysSelectionView;-><init>(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    iput p2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->access$000(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->onChanged(Landroid/util/SparseBooleanArray;)V

    goto :goto_0
.end method
