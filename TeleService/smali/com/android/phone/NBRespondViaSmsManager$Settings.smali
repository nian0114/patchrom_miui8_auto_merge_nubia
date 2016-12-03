.class public Lcom/android/phone/NBRespondViaSmsManager$Settings;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBRespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mLastSmsEditText:Lcn/nubia/commonui/phone/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBRespondViaSmsManager$Settings;->mLastSmsEditText:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    return-void
.end method

.method private initCustomViaSms([Z)V
    .locals 4
    .param p1, "responsedFlag"    # [Z

    .prologue
    const v3, 0x7f0b0353

    const/4 v2, 0x5

    const-string v1, "canned_response_pref_6"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .local v0, "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    aget-boolean v1, p1, v2

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(I)V

    :goto_0
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "canned_response_pref_7"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .restart local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x6

    aget-boolean v1, p1, v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(I)V

    :goto_1
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iput-object v0, p0, Lcom/android/phone/NBRespondViaSmsManager$Settings;->mLastSmsEditText:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    aget-boolean v1, p1, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBRespondViaSmsManager$Settings;->mLastSmsEditText:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initDefaultViaSms([Z)V
    .locals 2
    .param p1, "responsedFlag"    # [Z

    .prologue
    const-string v1, "canned_response_pref_1"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .local v0, "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    if-nez v1, :cond_0

    const v1, 0x7f0b034e

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "canned_response_pref_2"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .restart local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    if-nez v1, :cond_1

    const v1, 0x7f0b034f

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "canned_response_pref_3"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .restart local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    if-nez v1, :cond_2

    const v1, 0x7f0b0350

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "canned_response_pref_4"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .restart local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    if-nez v1, :cond_3

    const v1, 0x7f0b0351

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "canned_response_pref_5"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .restart local v0    # "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    const/4 v1, 0x4

    aget-boolean v1, p1, v1

    if-nez v1, :cond_4

    const v1, 0x7f0b0352

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private updateLastSmsEditTextVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x7

    new-array v0, v1, [Z

    .local v0, "responsedFlag":[Z
    # invokes: Lcom/android/phone/NBRespondViaSmsManager;->getReponsesChangedFlag([Z)V
    invoke-static {v0}, Lcom/android/phone/NBRespondViaSmsManager;->access$000([Z)V

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NBRespondViaSmsManager$Settings;->mLastSmsEditText:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->addPreferencesFromResource(I)V

    const/4 v2, 0x7

    new-array v1, v2, [Z

    .local v1, "responsedFlag":[Z
    # invokes: Lcom/android/phone/NBRespondViaSmsManager;->getReponsesChangedFlag([Z)V
    invoke-static {v1}, Lcom/android/phone/NBRespondViaSmsManager;->access$000([Z)V

    invoke-direct {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->initDefaultViaSms([Z)V

    invoke-direct {p0, v1}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->initCustomViaSms([Z)V

    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance v2, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    # setter for: Lcom/android/phone/NBRespondViaSmsManager;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;
    invoke-static {v2}, Lcom/android/phone/NBRespondViaSmsManager;->access$102(Lcom/android/phone/SubscriptionInfoHelper;)Lcom/android/phone/SubscriptionInfoHelper;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    # getter for: Lcom/android/phone/NBRespondViaSmsManager;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;
    invoke-static {}, Lcom/android/phone/NBRespondViaSmsManager;->access$100()Lcom/android/phone/SubscriptionInfoHelper;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;Lcom/android/phone/SubscriptionInfoHelper;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "respond_via_sms_prefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "instant_text_def_component"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10011d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onPause()V

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .local v0, "pref":Lcn/nubia/commonui/phone/preference/EditTextPreference;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NBRespondViaSmsManager;->updateSharedPreferenceFlag(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/NBRespondViaSmsManager;->access$200(Ljava/lang/String;)V

    const-string v2, "canned_response_pref_6"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->updateLastSmsEditTextVisible()V

    :cond_0
    const-string v2, "CS_SmsPoliteDecline"

    invoke-static {p0, v2}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NBRespondViaSmsManager$Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b034c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    instance-of v2, p1, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    if-eqz v2, :cond_0

    check-cast p1, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "editable":Landroid/text/Editable;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "editable":Landroid/text/Editable;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onResume()V

    invoke-static {p0}, Lcn/nubia/umeng/NBMobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
