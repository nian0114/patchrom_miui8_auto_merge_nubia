.class public Lcom/android/settings_ex/NsdEnabler;
.super Ljava/lang/Object;
.source "NsdEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBoxPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mCheckBoxPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->setEnabled(Z)V

    .line 70
    return v2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mCheckBoxPreference:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/NsdEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mCheckBoxPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    return-void
.end method
