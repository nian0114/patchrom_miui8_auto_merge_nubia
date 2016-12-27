.class public Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "VpnSettingsAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;


# instance fields
.field private mDnsServers:Landroid/widget/TextView;

.field private mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

.field private mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

.field private mUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 35
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mKeyStore:Landroid/security/KeyStore;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/net/VpnProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 90
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 35
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mKeyStore:Landroid/security/KeyStore;

    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 93
    return-void
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;)V

    .line 171
    return-void
.end method

.method private changeType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const v5, 0x7f120098

    const v4, 0x7f120095

    const v3, 0x7f120093

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v0, 0x7f12009a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :pswitch_5
    const v0, 0x7f12009a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private copyValuesForView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const v2, 0x7f120090

    const v3, 0x7f0c08a9

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const v2, 0x7f0a005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setSelection(I)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mUsername:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mPassword:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSearchDomains:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mMppe:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const v2, 0x7f120099

    const v3, 0x7f0c08af

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const-string v3, "USRPKEY_"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->loadCertificates(Lcom/android/settings_ex/vpn2/VpnSpinner;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const v2, 0x7f12009b

    const v3, 0x7f0c08b0

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const-string v3, "CACERT_"

    const v4, 0x7f0c08ba

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->loadCertificates(Lcom/android/settings_ex/vpn2/VpnSpinner;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const v2, 0x7f12009c

    const v3, 0x7f0c08b1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    const-string v3, "USRCERT_"

    const v4, 0x7f0c08bb

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->loadCertificates(Lcom/android/settings_ex/vpn2/VpnSpinner;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    return-void
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f12008f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f120090

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    .line 176
    const v0, 0x7f120091

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f1200a5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mUsername:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f1200a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mPassword:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f1200a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSearchDomains:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f1200a2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f1200a3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f120092

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mMppe:Landroid/widget/CheckBox;

    .line 183
    const v0, 0x7f120094

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mL2tpSecret:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f120096

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f120097

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecSecret:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f120099

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    .line 187
    const v0, 0x7f12009b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    .line 188
    const v0, 0x7f12009c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSpinner;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    .line 189
    const v0, 0x7f1200a7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSaveLogin:Landroid/widget/CheckBox;

    .line 190
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    const v1, 0x7f12008e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->changeType(I)V

    .line 233
    const v1, 0x7f12009e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "showOptions":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    .line 247
    :goto_1
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private loadCertificates(Lcom/android/settings_ex/vpn2/VpnSpinner;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "spinner"    # Lcom/android/settings_ex/vpn2/VpnSpinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "firstId"    # I
    .param p4, "selected"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    if-nez p3, :cond_2

    const-string v2, ""

    .line 251
    .local v2, "first":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "certificates":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_3

    .line 254
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    .end local v1    # "certificates":[Ljava/lang/String;
    aput-object v2, v1, v5

    .line 261
    .restart local v1    # "certificates":[Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 262
    aget-object v4, v1, v3

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    invoke-virtual {p1, v3}, Lcom/android/settings_ex/vpn2/VpnSpinner;->setSelection(I)V

    .line 267
    :cond_1
    return-object v1

    .line 250
    .end local v1    # "certificates":[Ljava/lang/String;
    .end local v2    # "first":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 256
    .restart local v1    # "certificates":[Ljava/lang/String;
    .restart local v2    # "first":Ljava/lang/String;
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 257
    .local v0, "array":[Ljava/lang/String;
    aput-object v2, v0, v5

    .line 258
    array-length v4, v1

    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    move-object v1, v0

    goto :goto_1

    .line 261
    .end local v0    # "array":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 297
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 298
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 297
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/16 v8, 0x20

    .line 303
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2

    .line 304
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 306
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 308
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 309
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 311
    .local v5, "integer":I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 313
    :cond_3
    const/4 v9, 0x0

    .line 319
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_1
    return v9

    .line 316
    :catch_0
    move-exception v3

    .line 317
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 319
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "field"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mType:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 334
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 366
    return-object v0

    .line 336
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 348
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 351
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecUserCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 356
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecCaCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mIpsecServerCert:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "showOptions"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 120
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v2, 0x7f12009d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "topView":Landroid/view/View;
    const v2, 0x7f12009f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "bottomView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const v2, 0x7f1200a0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v2, 0x7f0d005c

    const v3, 0x7f0d005b

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setThemes(II)V

    .line 57
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    const/4 v3, 0x1

    const v4, 0x7f0e0065

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 59
    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string v2, "VpnKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VpnProfile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 66
    new-instance v2, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 84
    const v2, 0x7f0c08c0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setTitle(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->findViewById()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->copyValuesForView()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->addListener()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->initUI()V

    .line 89
    return-void
.end method

.method public onItemSelected(II)V
    .locals 1
    .param p1, "parent"    # I
    .param p2, "value"    # I

    .prologue
    .line 371
    const v0, 0x7f120090

    if-ne p1, v0, :cond_0

    .line 372
    invoke-direct {p0, p2}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->changeType(I)V

    .line 374
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 116
    return-void
.end method
