.class Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;
.super Ljava/lang/Object;
.source "SchPwrOnOffSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 126
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 129
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 130
    .local v10, "value":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_1

    .line 131
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v9, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/settings_ex/schpwronoff/Alarms;->ALARM_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->startActivity(Landroid/content/Intent;)V

    .line 148
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updatePowerOnDays()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$800(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    .line 149
    return v1

    .line 135
    :cond_1
    if-nez v10, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->set(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v4

    iget v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v5, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v5}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    move v6, v1

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    goto :goto_0

    .line 139
    :cond_2
    if-ne v10, v1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->set(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v4

    iget v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v5, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v5}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    move v6, v1

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    goto/16 :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x2

    if-ne v10, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->set(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v2}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v3, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v3}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v3

    iget v3, v3, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v4, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v4}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v4

    iget v4, v4, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v5, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # getter for: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->mPowerOnAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;
    invoke-static {v5}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$400(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const-string v7, ""

    const-string v8, "silent"

    move v6, v1

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$5;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    goto/16 :goto_0
.end method
