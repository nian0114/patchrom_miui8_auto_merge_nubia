.class Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;
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
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->hideOrShowPowerOffPref(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$200(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;Z)V

    .line 87
    const-string v1, "SchPwrOnOffSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChecked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings$2;->this$0:Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;

    # invokes: Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->updateAlarms()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;->access$100(Lcom/android/settings_ex/schpwronoff/SchPwrOnOffSettings;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
