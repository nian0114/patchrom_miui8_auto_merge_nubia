.class Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;
.super Ljava/lang/Object;
.source "SchPwrOnOffSettings.java"

# interfaces
.implements Lcom/android/settings_ex/schpwronoff/TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 9
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$300(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget-object v5, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    move v3, p1

    move v4, p2

    move v6, v1

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$3;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnTimeSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$500(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    goto :goto_0
.end method
