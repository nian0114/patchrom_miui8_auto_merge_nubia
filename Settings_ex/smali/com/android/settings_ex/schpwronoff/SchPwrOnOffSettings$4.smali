.class Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;
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
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 9
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v6, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$300(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return v6

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$600(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOffAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$600(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget-object v5, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$4;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOffTimeSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$700(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    goto :goto_0
.end method
