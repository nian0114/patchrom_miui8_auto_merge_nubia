.class public Lcom/android/phone/NBCdmaCallForwardSetting;
.super Lcn/nubia/commonui/phone/preference/PreferenceActivity;
.source "NBCdmaCallForwardSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

.field private mButtonCFCA:Landroid/preference/Preference;

.field private mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

.field private mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

.field private mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private final mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NBCdmaCallForwardSetting;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NBCdmaCallForwardSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NBCdmaCallForwardSetting$1;-><init>(Lcom/android/phone/NBCdmaCallForwardSetting;)V

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    return-void
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const v4, 0x7f0b0315

    const v3, 0x7f0b0314

    const/4 v2, 0x0

    const-string v0, "button_cfu_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBEditCdmaCfCwPreference;

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v0, "button_cfd_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBEditCdmaCfCwPreference;

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v0, "button_cfb_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBEditCdmaCfCwPreference;

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v0, "button_cfnry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBEditCdmaCfCwPreference;

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v0, "button_cfca_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFCA:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFCA:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setSubscription(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setSubscription(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setSubscription(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setSubscription(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setParentActivity(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setParentActivity(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setParentActivity(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setParentActivity(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v1, "*72"

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v1, "*68"

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v1, "*90"

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const-string v1, "*92"

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setPositiveButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setNegativeButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setPositiveButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setNegativeButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setPositiveButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setNegativeButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setPositiveButtonText(I)V

    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/NBEditCdmaCfCwPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-string v0, "NBCdmaCallForwardSetting"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string v0, "NBCdmaCallForwardSetting"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/NBCdmaCallForwardSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NBCdmaCallForwardSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "NBCdmaCallForwardSetting"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFU:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFB:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFNRY:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFD:Lcom/android/phone/NBEditCdmaCfCwPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBEditCdmaCfCwPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel:*730"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget v2, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-static {v2}, Lcom/android/phone/NBPhoneUtils;->getAccount(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/android/phone/NBCdmaCallForwardSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBCdmaCallForwardSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    const-string v1, "NBCdmaCallForwardSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NBCdmaCallForwardSetting;->initPreference()V

    invoke-virtual {p0}, Lcom/android/phone/NBCdmaCallForwardSetting;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

    invoke-static {v1}, Lcom/android/phone/NBSimStateChangeReceiver;->addStateChangeListener(Lcom/android/phone/NBSimStateChangeInterface;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->showStatusBarPic(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mSimStateChangeListener:Lcom/android/phone/NBSimStateChangeInterface;

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

    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToLastLevelSetting(Landroid/app/Activity;I)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mPhoneId:I

    invoke-static {p0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->goUpToTopLevelSetting(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/phone/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting;->mButtonCFCA:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b031b

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b031c

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/phone/app/AlertDialog;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
