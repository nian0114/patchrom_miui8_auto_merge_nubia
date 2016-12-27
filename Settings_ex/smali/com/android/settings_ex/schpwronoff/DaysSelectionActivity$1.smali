.class Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;
.super Lcom/android/settings_ex/schpwronoff/DaysSelectionView;
.source "DaysSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->initContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;-><init>(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)V

    return-void
.end method


# virtual methods
.method protected onChanged(Landroid/util/SparseBooleanArray;)V
    .locals 10
    .param p1, "days"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v6, 0x1

    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$000(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0, v9, v6}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->set(IZ)V

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I
    invoke-static {v1}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$200(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v4

    iget v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v5, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v5}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;->this$0:Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    # getter for: Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->set(IZ)V

    goto :goto_1
.end method
