.class public Lcom/android/settings_ex/wifi/WifiApDialogActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "WifiApDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;
.implements Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;


# instance fields
.field private isPasswordCheck:Z

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordCheckBox:Landroid/widget/ImageView;

.field private mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/EditText;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isPasswordCheck:Z

    return-void
.end method

.method private SsidLimit(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 219
    .local v0, "mssidEnd":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    .line 220
    .local v1, "mssidLength":I
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 222
    if-lez v0, :cond_1

    .line 223
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method private getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 175
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 176
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 199
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 178
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 183
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 191
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initShowPassword(Z)V
    .locals 4
    .param p1, "ret"    # Z

    .prologue
    .line 132
    const v2, 0x7f120438

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 133
    .local v1, "view":Landroid/widget/CheckBox;
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 136
    .local v0, "pos":I
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v2, 0x90

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    if-ltz v0, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 144
    :cond_0
    return-void

    .line 136
    :cond_1
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private isSameConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 303
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 312
    goto :goto_0

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v2, :cond_4

    .line 317
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v2, :cond_0

    move v0, v1

    .line 320
    goto :goto_0

    .line 325
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 329
    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f120435

    .line 158
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 150
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 4

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 288
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isSameConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->finish()V

    .line 298
    return-void

    .line 291
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wifiapconfig"

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    const/16 v2, 0x1e

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public OnPositiveButtonClick()V
    .locals 2

    .prologue
    .line 281
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->finish()V

    .line 284
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->validate()V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->SsidLimit(Landroid/text/Editable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 256
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 236
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isPasswordCheck:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isPasswordCheck:Z

    .line 237
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isPasswordCheck:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPasswordCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->isPasswordCheck:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->initShowPassword(Z)V

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPasswordCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 248
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_3
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    goto :goto_3

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1200a6 -> :sswitch_1
        0x7f120439 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f120434

    const/4 v3, 0x1

    .line 70
    const v0, 0x7f0d005c

    const v1, 0x7f0d005b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setThemes(II)V

    .line 71
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 73
    const v0, 0x7f0401e4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f0c0304

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setTitle(I)V

    .line 75
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 76
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifiapconfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v1, 0x7f0c02a7

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 87
    const v0, 0x7f120090

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v0, 0x7f120433

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f1200a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurity:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 95
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    const v0, 0x7f120439

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPasswordCheckBox:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mPasswordCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f120438

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->showSecurityFields()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->validate()V

    .line 110
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->initShowPassword(Z)V

    .line 113
    return-void
.end method

.method public onItemSelected(II)V
    .locals 0
    .param p1, "parent"    # I
    .param p2, "position"    # I

    .prologue
    .line 273
    iput p2, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->showSecurityFields()V

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->validate()V

    .line 276
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->mSecurityTypeIndex:I

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->showSecurityFields()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->validate()V

    .line 265
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 203
    return-void
.end method
