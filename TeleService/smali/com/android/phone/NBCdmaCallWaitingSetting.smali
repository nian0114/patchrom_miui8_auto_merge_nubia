.class public Lcom/android/phone/NBCdmaCallWaitingSetting;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBCdmaCallWaitingSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mButtonActivate:Landroid/preference/Preference;

.field private mButtonCancel:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private final mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBCdmaCallWaitingSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCdmaCallWaitingSetting$1;-><init>(Lcom/android/phone/NBCdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCdmaCallWaitingSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCdmaCallWaitingSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhoneId:I

    const-string v1, "button_activate_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCdmaCallWaitingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonActivate:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonActivate:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "button_cancel_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCdmaCallWaitingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonCancel:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonCancel:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/NBCdmaCallWaitingSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v1}, Lcom/android/phone/NBSimStateChangeReceiver;->addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v0}, Lcom/android/phone/NBSimStateChangeReceiver;->removeStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-super {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToLastLevelSetting(Landroid/app/Activity;I)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToTopLevelSetting(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonActivate:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "tel:*74"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget v3, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhoneId:I

    invoke-static {v3}, Lcom/android/phone/NBPhoneUtils;->getAccount(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mButtonCancel:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "tel:*740"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget v3, p0, Lcom/android/phone/NBCdmaCallWaitingSetting;->mPhoneId:I

    invoke-static {v3}, Lcom/android/phone/NBPhoneUtils;->getAccount(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
