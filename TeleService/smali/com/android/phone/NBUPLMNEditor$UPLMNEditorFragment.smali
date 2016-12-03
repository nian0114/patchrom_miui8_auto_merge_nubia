.class public Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
.super Landroid/preference/PreferenceFragment;
.source "NBUPLMNEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBUPLMNEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UPLMNEditorFragment"
.end annotation


# instance fields
.field private mNWIDDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

.field private mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

.field private mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

.field private mNoSet:Ljava/lang/String;

.field private mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNoSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->dealActivityEvent(I)V

    return-void
.end method

.method private buttonEnabled()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v2}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getDialog()Lcn/nubia/commonui/phone/app/Dialog;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/phone/app/AlertDialog;

    iput-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v2}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    .local v1, "state":Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    instance-of v2, v2, Lcn/nubia/commonui/phone/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDDialog:Lcn/nubia/commonui/phone/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/phone/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    .end local v1    # "state":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNoSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNoSet:Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private convertApMode2EF(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/16 v0, 0xd

    .local v0, "result":I
    :goto_0
    return v0

    .end local v0    # "result":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public static convertEFMode2Ap(I)I
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    const/4 v0, 0x3

    .local v0, "result":I
    :goto_0
    return v0

    .end local v0    # "result":I
    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private dealActivityEvent(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->setSavedNWInfo()V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->setRemovedNWInfo()V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private displayNetworkInfo(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x7f0a0005

    const/4 v7, 0x0

    const-string v4, "uplmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNoSet:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v4, "uplmn_priority"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "priority":I
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v4, "uplmn_service"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "act":I
    invoke-static {v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->convertEFMode2Ap(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v0

    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .end local v0    # "act":I
    .end local v2    # "priority":I
    .end local v3    # "summary":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private genNWInfoToIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .local v2, "priority":I
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uplmn_size"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "plmnListSize":I
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v3}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uplmn_add"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le v2, v1, :cond_0

    move v2, v1

    :cond_0
    :goto_1
    const-string v3, "uplmn_priority"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    const-string v3, "uplmn_service"

    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->convertApMode2EF(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v3, "uplmn_code"

    iget-object v4, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v4}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_1
    if-lt v2, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "uplmn_service"

    invoke-direct {p0, v5}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->convertApMode2EF(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private setRemovedNWInfo()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/phone/UserPLMNListPreference;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->genNWInfoToIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setSavedNWInfo()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/phone/UserPLMNListPreference;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->genNWInfoToIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setSelecion(Lcn/nubia/commonui/phone/preference/EditTextPreference;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/phone/preference/EditTextPreference;

    .prologue
    invoke-virtual {p1}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private validate()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v2}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "Id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b040d

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->buttonEnabled()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNoSet:Ljava/lang/String;

    const-string v0, "network_id_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    const-string v0, "priority_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    const-string v0, "network_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/phone/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->checkNoSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v0

    .local v1, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWMPref:Lcn/nubia/commonui/phone/preference/ListPreference;

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->setSelecion(Lcn/nubia/commonui/phone/preference/EditTextPreference;)V

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mNWIDPref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->mPRIpref:Lcn/nubia/commonui/phone/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->setSelecion(Lcn/nubia/commonui/phone/preference/EditTextPreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->displayNetworkInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    return-void
.end method
