.class public Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 629
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I
    invoke-static {v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->access$1600(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->mMinute:I
    invoke-static {v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->access$1700(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    .line 630
    .local v4, "usePref":Z
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 631
    .local v0, "c":Ljava/util/Calendar;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I
    invoke-static {v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->access$1600(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v1

    .line 632
    .local v1, "hour":I
    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->mMinute:I
    invoke-static {v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->access$1700(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v2

    .line 633
    .local v2, "minute":I
    :goto_2
    new-instance v3, Lcn/nubia/commonui/widget/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, p0, v1, v2}, Lcn/nubia/commonui/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V

    .line 634
    .local v3, "tpDialog":Lcn/nubia/commonui/widget/TimePickerDialog;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    return-object v3

    .line 629
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "tpDialog":Lcn/nubia/commonui/widget/TimePickerDialog;
    .end local v4    # "usePref":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 631
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v4    # "usePref":Z
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    .line 632
    .restart local v1    # "hour":I
    :cond_2
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2
.end method

.method public onTimeSet(Lcn/nubia/commonui/widget/TimePickerView;II)V
    .locals 1
    .param p1, "view"    # Lcn/nubia/commonui/widget/TimePickerView;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 642
    :cond_0
    return-void
.end method
