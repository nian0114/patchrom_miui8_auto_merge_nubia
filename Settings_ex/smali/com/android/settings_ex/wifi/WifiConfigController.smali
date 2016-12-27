.class public Lcom/android/settings_ex/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPasswordCheck:Z

.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mCerPathString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCert_Cnt:I

.field private mCert_Set:Z

.field private mCertificateAs:Ljava/lang/String;

.field private mCertificateAsPath:Ljava/lang/String;

.field private mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mCertificateUser:Ljava/lang/String;

.field private mCertificateUserPath:Ljava/lang/String;

.field private final mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mModify:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordCheckBox:Landroid/widget/ImageView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field public mPsk_key_type:I

.field private mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

.field private selectedSimCardName:Ljava/lang/String;

.field private selectedSimCardNumber:I

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 20
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isPasswordCheck:Z

    .line 136
    const-string v15, "unspecified"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 164
    sget-object v15, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 165
    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 166
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 167
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 176
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 195
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 196
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 197
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    .line 204
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 205
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 206
    if-nez p3, :cond_2

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 208
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    .line 209
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    .line 211
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 215
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 216
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 217
    const v15, 0x7f0a001b

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 218
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1090008

    const v18, 0x7f0a0024

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v16, 0x1090009

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 223
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1090008

    const v18, 0x7f0a0025

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v16, 0x1090009

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v16, 0x7f0c02bd

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120084

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f12007a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v15, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120451

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f12044f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120433

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120434

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v16, 0x7f120434

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c02a7

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v16, 0x7f0a0088

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120090

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120452

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120453

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0c11

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 373
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c02d0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 377
    :cond_1
    return-void

    .line 206
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v15

    goto/16 :goto_0

    .line 261
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0c96

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120075

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 269
    .local v5, "group":Landroid/view/ViewGroup;
    const/4 v10, 0x0

    .line 270
    .local v10, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 272
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v15

    sget-object v16, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    const/4 v10, 0x1

    .line 276
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    .line 277
    .local v13, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v13, :cond_4

    iget-object v15, v13, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v15, :cond_4

    .line 278
    const v15, 0x7f0c02ac

    iget-object v0, v13, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 286
    .end local v13    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_4
    :goto_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v15

    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    .line 288
    const/4 v10, 0x1

    .line 295
    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 296
    const v15, 0x7f0c02ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0c02af

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 301
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v15, :cond_8

    .line 303
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120452

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120453

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    if-eqz v10, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120453

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120076

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    if-eqz v15, :cond_d

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0c11

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 264
    .end local v5    # "group":Landroid/view/ViewGroup;
    .end local v10    # "showAdvancedFields":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0c95

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 282
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "showAdvancedFields":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 289
    :cond_b
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v15

    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    .line 291
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 293
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 318
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    .line 319
    .local v12, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "signalLevel":Ljava/lang/String;
    if-nez v12, :cond_f

    if-eqz v11, :cond_f

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0c11

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 367
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 368
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    const v16, 0x7f0c02cc

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 324
    :cond_f
    if-eqz v12, :cond_11

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->isEphemeral()Z

    move-result v7

    .line 326
    .local v7, "isEphemeral":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 327
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 328
    .local v8, "providerFriendlyName":Ljava/lang/String;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 329
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 331
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v12, v7, v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, "summary":Ljava/lang/String;
    const v15, 0x7f0c02a9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v14}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 336
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "isEphemeral":Z
    .end local v8    # "providerFriendlyName":Ljava/lang/String;
    .end local v14    # "summary":Ljava/lang/String;
    :cond_11
    if-eqz v11, :cond_12

    .line 337
    const v15, 0x7f0c02a8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v11}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 340
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 341
    .local v6, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_13

    .line 342
    const v15, 0x7f0c02aa

    const v16, 0x7f0c0259

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 346
    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_14

    .line 347
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 348
    .local v4, "frequency":I
    const/4 v2, 0x0

    .line 350
    .local v2, "band":Ljava/lang/String;
    const/16 v15, 0x960

    if-lt v4, v15, :cond_15

    const/16 v15, 0x9c4

    if-ge v4, v15, :cond_15

    .line 352
    const v15, 0x7f0c0257

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    :goto_6
    if-eqz v2, :cond_14

    .line 360
    const v15, 0x7f0c02ab

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 364
    .end local v2    # "band":Ljava/lang/String;
    .end local v4    # "frequency":I
    :cond_14
    const v15, 0x7f0c02a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f120082

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 353
    .restart local v2    # "band":Ljava/lang/String;
    .restart local v4    # "frequency":I
    :cond_15
    const/16 v15, 0x1324

    if-lt v4, v15, :cond_16

    const/16 v15, 0x170c

    if-ge v4, v15, :cond_16

    .line 355
    const v15, 0x7f0c0258

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 357
    :cond_16
    const-string v15, "WifiConfigController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected frequency "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private PasswordLengthLimit(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 454
    .local v0, "end":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    .line 455
    .local v1, "length":I
    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 456
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f12008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 382
    const v1, 0x7f120454

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 723
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-object v1

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSIMInfo()V
    .locals 8

    .prologue
    .line 1499
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1501
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1503
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1504
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1506
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0998

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayname":Ljava/lang/String;
    goto :goto_1

    .line 1510
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 388
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 393
    :goto_0
    return-object v1

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCertificateChange(I)V
    .locals 4
    .param p1, "Certificate"    # I

    .prologue
    .line 1452
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 1453
    .local v1, "string":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUserPath:Ljava/lang/String;

    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAsPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    .end local v1    # "string":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1461
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 673
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 677
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 678
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 679
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 680
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 718
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 673
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 685
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 686
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 687
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 688
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 689
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 690
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 694
    .local v3, "port":I
    const/4 v5, 0x0

    .line 696
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 697
    invoke-static {v2, v4, v1}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 701
    :goto_2
    if-nez v5, :cond_3

    .line 702
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 718
    goto :goto_1

    .line 698
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c00f8

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 704
    goto :goto_1

    .line 706
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 707
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 708
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 709
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 710
    goto :goto_1

    .line 712
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 713
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 714
    goto :goto_1

    .line 716
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V
    .locals 7
    .param p1, "spinner"    # Lcom/android/settings_ex/wifi/WifiSpinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1252
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1254
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-virtual {v3, p2, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "certs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 1256
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    .end local v1    # "certs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 1263
    .restart local v1    # "certs":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 1264
    return-void

    .line 1258
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 1259
    .local v0, "array":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 1260
    array-length v3, v1

    invoke-static {v1, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    move-object v1, v0

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12044a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120444

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 1104
    :cond_0
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1294
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1296
    .local v5, "context":Landroid/content/Context;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v2, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    .line 1299
    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1300
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1302
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/wapi_certificate"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v4, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1305
    const-string v7, "WifiConfigController"

    const-string v8, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :goto_0
    return-void

    .line 1309
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1310
    .local v3, "certificateList":[Ljava/io/File;
    array-length v7, v3

    iput v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1311
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 1312
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1313
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/as.cer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v0, "ASCertFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/user.cer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v1, "UserCertFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1316
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .end local v0    # "ASCertFile":Ljava/io/File;
    .end local v1    # "UserCertFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1321
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1326
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1329
    .end local v3    # "certificateList":[Ljava/io/File;
    .end local v6    # "i":I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120448

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 1094
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1117
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12044c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120442

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 1099
    :cond_0
    return-void
.end method

.method private setSelection(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Lcom/android/settings_ex/wifi/WifiSpinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1280
    if-eqz p2, :cond_0

    .line 1281
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getAdapter()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1282
    .local v0, "array":[Ljava/lang/CharSequence;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1283
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    invoke-virtual {p1, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 1291
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1282
    .restart local v0    # "array":[Ljava/lang/CharSequence;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120440

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120446

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 1109
    :cond_0
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9
    .param p1, "eapMethod"    # I

    .prologue
    const v8, 0x7f12044a

    const v6, 0x7f120442

    const/4 v7, 0x0

    .line 1009
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12043e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120448

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120444

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12044c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120450

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1019
    .local v1, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1085
    :goto_0
    return-void

    .line 1021
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1022
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1023
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1024
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1025
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 1028
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120446

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1030
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1031
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1032
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 1040
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v3, :cond_0

    .line 1041
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 1042
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1045
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 1051
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v3, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 1054
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1057
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 1062
    :pswitch_4
    const/4 v0, 0x0

    .line 1063
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 1064
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1066
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1070
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1072
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1073
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120440

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    if-eqz v0, :cond_3

    .line 1075
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1077
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1078
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1079
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1080
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1081
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1082
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f120085

    const/4 v5, 0x0

    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120082

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1131
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1132
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1134
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1135
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1136
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1137
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1138
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120088

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1140
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1141
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1142
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1143
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12008a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1144
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1146
    :cond_1
    if-eqz v0, :cond_5

    .line 1147
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1148
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1149
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1150
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1157
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1161
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1162
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1165
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1170
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f12007e

    const v8, 0x7f12007c

    const v7, 0x7f12007b

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1175
    const/4 v0, 0x0

    .line 1177
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120078

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1183
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1184
    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1185
    invoke-direct {p0, v9, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1186
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1187
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1189
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1190
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1191
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1192
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120081

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1193
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1195
    :cond_1
    if-eqz v0, :cond_2

    .line 1196
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1197
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1198
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1203
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1204
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1205
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1206
    invoke-direct {p0, v8, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1208
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1209
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12007d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1210
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1212
    :cond_4
    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1214
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1219
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1220
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1221
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 13

    .prologue
    .line 798
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v9, :cond_0

    .line 799
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12043c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120451

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12043c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 812
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v9, :cond_1

    .line 813
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f1200a6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 814
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 816
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->showPasswordIfNeccesary(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120439

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordCheckBox:Landroid/widget/ImageView;

    .line 821
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120438

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    invoke-virtual {v9, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 824
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120451

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 825
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f120451

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0caa

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 827
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0086

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 829
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 830
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v10, 0x7f0c02bc

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHint(I)V

    .line 842
    :try_start_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 843
    .local v0, "cl":Ljava/lang/Class;
    const-string v9, "wapiPskType"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 844
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/wifi/WifiConfiguration;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 845
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 846
    .local v7, "o":Ljava/lang/Object;
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 847
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wapiPskType: in  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_1
    :goto_2
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 863
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120438

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120450

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 867
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120451

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_2
    :goto_3
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    .line 903
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12043d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 817
    :catch_0
    move-exception v3

    .line 818
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 850
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_3
    :try_start_2
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wapiPskType: in  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 853
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 854
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showSecurityFields exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 870
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    .line 875
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120438

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120451

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 882
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f12044f

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0c18

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 887
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCertificateSpinnerAdapter()V

    goto/16 :goto_3

    .line 890
    :cond_5
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    .line 894
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120438

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120451

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 906
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12043d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-nez v9, :cond_8

    .line 909
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSIMInfo()V

    .line 910
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12043f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 911
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f12043f

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c02b0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0089

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 913
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/wifi/WifiSpinner;->setOnItemSelectedListener(Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;)V

    .line 924
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120443

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 925
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f120443

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c02b1

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setAdapter([Ljava/lang/CharSequence;)V

    .line 928
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120445

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 929
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f120445

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c02b2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120447

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/wifi/WifiSpinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    .line 932
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const v10, 0x7f120447

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c02b3

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/wifi/WifiSpinner;->setText(ILjava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120441

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 934
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f120449

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 935
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f12044b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 937
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const-string v10, "CACERT_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V

    .line 938
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const-string v10, "USRPKEY_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V

    .line 941
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 942
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    iget-object v5, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 943
    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 944
    .local v4, "eapMethod":I
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v8

    .line 945
    .local v8, "phase2Method":I
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 946
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 947
    packed-switch v4, :pswitch_data_0

    .line 971
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9, v8}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    .line 974
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V

    .line 975
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Lcom/android/settings_ex/wifi/WifiSpinner;Ljava/lang/String;)V

    .line 976
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 949
    :pswitch_1
    packed-switch v8, :pswitch_data_1

    .line 960
    :pswitch_2
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid phase 2 method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 951
    :pswitch_3
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    goto :goto_4

    .line 954
    :pswitch_4
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    goto :goto_4

    .line 957
    :pswitch_5
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/WifiSpinner;->setSelection(I)V

    goto :goto_4

    .line 967
    :pswitch_6
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 968
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 979
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "eapMethod":I
    .end local v5    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v8    # "phase2Method":I
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 982
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 949
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1534
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1538
    if-ltz v0, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1541
    :cond_0
    return-void

    .line 1534
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 730
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 794
    :goto_0
    return v10

    .line 732
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0c02e1

    goto :goto_0

    .line 735
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 736
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 737
    const v10, 0x7f0c02e1

    goto :goto_0

    .line 740
    :cond_2
    const/4 v9, -0x1

    .line 742
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 743
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 744
    :cond_3
    const v10, 0x7f0c02e4

    goto :goto_0

    .line 746
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 757
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 758
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 759
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 760
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 775
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 777
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c02e6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 787
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 789
    if-nez v2, :cond_9

    .line 790
    const v10, 0x7f0c02e3

    goto/16 :goto_0

    .line 747
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c02ec

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 765
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 766
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 767
    const v10, 0x7f0c02e2

    goto/16 :goto_0

    .line 769
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 779
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 780
    if-nez v2, :cond_8

    .line 781
    const v10, 0x7f0c02e3

    goto/16 :goto_0

    .line 783
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 792
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 762
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 761
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public SsidLengthLimit(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1546
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1548
    .local v0, "end":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    .line 1549
    .local v1, "length":I
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 1550
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->SsidLengthLimit(Landroid/text/Editable;)V

    .line 1344
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->PasswordLengthLimit(Landroid/text/Editable;)V

    .line 1345
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1350
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1355
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v3

    .line 413
    .local v3, "submit":Landroid/widget/Button;
    if-nez v3, :cond_0

    .line 449
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 416
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 418
    .local v2, "passwordInvalid":Z
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 421
    :cond_2
    const/4 v2, 0x1

    .line 425
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 426
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v4, v7, :cond_9

    .line 427
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 428
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "password":Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_5

    .line 430
    :cond_4
    const/4 v2, 0x1

    .line 437
    .end local v1    # "password":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_7
    if-eqz v2, :cond_a

    .line 440
    :cond_8
    const/4 v0, 0x0

    .line 448
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 433
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 442
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 443
    const/4 v0, 0x1

    goto :goto_2

    .line 445
    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 23

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 461
    const/4 v6, 0x0

    .line 669
    :goto_0
    return-object v6

    .line 464
    :cond_0
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 466
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 470
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 478
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 662
    const/4 v6, 0x0

    goto :goto_0

    .line 471
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->isSaved()Z

    move-result v18

    if-nez v18, :cond_2

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 475
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 480
    :pswitch_0
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 665
    :cond_3
    :goto_2
    new-instance v18, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 484
    :pswitch_1
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 485
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 486
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-eqz v18, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v14

    .line 489
    .local v14, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 491
    .local v16, "password":Ljava/lang/String;
    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v14, v0, :cond_4

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-eq v14, v0, :cond_4

    const/16 v18, 0x3a

    move/from16 v0, v18

    if-ne v14, v0, :cond_5

    :cond_4
    const-string v18, "[0-9A-Fa-f]*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 493
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    goto/16 :goto_2

    .line 495
    :cond_5
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    goto/16 :goto_2

    .line 501
    .end local v14    # "length":I
    .end local v16    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-eqz v18, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 504
    .restart local v16    # "password":Ljava/lang/String;
    const-string v18, "[0-9A-Fa-f]{64}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 505
    move-object/from16 v0, v16

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 507
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 528
    .end local v16    # "password":Ljava/lang/String;
    :pswitch_3
    :try_start_0
    const-class v18, Landroid/net/wifi/WifiConfiguration$KeyMgmt;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 529
    .local v2, "c":Ljava/lang/Class;
    const-string v18, "WAPI_PSK"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 530
    .local v10, "fi":Ljava/lang/reflect/Field;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 532
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 533
    .local v4, "cl":Ljava/lang/Class;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/net/wifi/WifiConfiguration;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 534
    .local v7, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 536
    .local v15, "o":Ljava/lang/Object;
    const-string v18, "wapiPsk"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 537
    .local v12, "field1":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-eqz v18, :cond_7

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 541
    .restart local v16    # "password":Ljava/lang/String;
    const-string v18, "[0-9A-Fa-f]{64}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 542
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    .end local v16    # "password":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v18, "wapiPskType"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 549
    .local v13, "field2":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    move-object v0, v15

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v6, v0

    .line 553
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadConfig config="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",psktype="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 554
    .end local v2    # "c":Ljava/lang/Class;
    .end local v4    # "cl":Ljava/lang/Class;
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v10    # "fi":Ljava/lang/reflect/Field;
    .end local v12    # "field1":Ljava/lang/reflect/Field;
    .end local v13    # "field2":Ljava/lang/reflect/Field;
    .end local v15    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 555
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getConfig exception="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 544
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":Ljava/lang/Class;
    .restart local v4    # "cl":Ljava/lang/Class;
    .restart local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v10    # "fi":Ljava/lang/reflect/Field;
    .restart local v12    # "field1":Ljava/lang/reflect/Field;
    .restart local v15    # "o":Ljava/lang/Object;
    .restart local v16    # "password":Ljava/lang/String;
    :cond_8
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 568
    .end local v2    # "c":Ljava/lang/Class;
    .end local v4    # "cl":Ljava/lang/Class;
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v10    # "fi":Ljava/lang/reflect/Field;
    .end local v12    # "field1":Ljava/lang/reflect/Field;
    .end local v15    # "o":Ljava/lang/Object;
    .end local v16    # "password":Ljava/lang/String;
    :pswitch_4
    :try_start_2
    const-class v18, Landroid/net/wifi/WifiConfiguration$KeyMgmt;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 569
    .restart local v2    # "c":Ljava/lang/Class;
    const-string v18, "WAPI_CERT"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 570
    .restart local v10    # "fi":Ljava/lang/reflect/Field;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 572
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 573
    .restart local v4    # "cl":Ljava/lang/Class;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/net/wifi/WifiConfiguration;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 574
    .restart local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 576
    .restart local v15    # "o":Ljava/lang/Object;
    const-string v18, "wapiASCert"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 577
    .local v11, "field":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    const-string v18, "wapiUserCert"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 581
    .restart local v13    # "field2":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    move-object v0, v15

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 585
    .end local v2    # "c":Ljava/lang/Class;
    .end local v4    # "cl":Ljava/lang/Class;
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v10    # "fi":Ljava/lang/reflect/Field;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "field2":Ljava/lang/reflect/Field;
    .end local v15    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 586
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getConfig exception="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 593
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_5
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 594
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    .line 595
    new-instance v18, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v9

    .line 597
    .local v9, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v17

    .line 598
    .local v17, "phase2Method":I
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 599
    packed-switch v9, :pswitch_data_1

    .line 629
    :pswitch_6
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 632
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItem()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "caCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v3, ""

    .line 634
    :cond_9
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItem()Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "clientCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v5, ""

    .line 637
    :cond_a
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 638
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v9, v0, :cond_b

    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v9, v0, :cond_b

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v9, v0, :cond_c

    .line 639
    :cond_b
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 640
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 650
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->isShown()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 654
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 604
    .end local v3    # "caCert":Ljava/lang/String;
    .end local v5    # "clientCert":Ljava/lang/String;
    :pswitch_7
    packed-switch v17, :pswitch_data_2

    .line 615
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown phase2 method"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 606
    :pswitch_8
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 609
    :pswitch_9
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 612
    :pswitch_a
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 622
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardName:Ljava/lang/String;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardNumber:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    goto/16 :goto_4

    .line 641
    .restart local v3    # "caCert":Ljava/lang/String;
    .restart local v5    # "clientCert":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v9, v0, :cond_d

    .line 642
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 643
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 645
    :cond_d
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 646
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 658
    :cond_e
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 599
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 604
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hasPasswordFieldis()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 398
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 405
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isModify()Z
    .locals 1

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f120076

    .line 1364
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f120438

    if-ne v1, v2, :cond_2

    .line 1365
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1366
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1370
    if-ltz v0, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1380
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1366
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1373
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f120453

    if-ne v1, v2, :cond_0

    .line 1374
    if-eqz p2, :cond_3

    .line 1375
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1377
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1529
    :goto_0
    return-void

    .line 1515
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isPasswordCheck:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isPasswordCheck:Z

    .line 1516
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isPasswordCheck:Z

    if-eqz v0, :cond_1

    .line 1517
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1523
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isPasswordCheck:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updatePasswordVisibility(Z)V

    goto :goto_0

    .line 1515
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1512
    :pswitch_data_0
    .packed-switch 0x7f120439
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(II)V
    .locals 4
    .param p1, "parent"    # I
    .param p2, "value"    # I

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1384
    iput p2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1385
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 1405
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 1406
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1408
    :cond_2
    return-void

    .line 1387
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1388
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1389
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 1390
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 1391
    .local v0, "cert_sel":I
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ############# WifiConfigController.java->onItemSelected() Cert_selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->handleCertificateChange(I)V

    goto :goto_0

    .line 1395
    .end local v0    # "cert_sel":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getID()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1396
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 1398
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wapiPskType  WAPI PSK key type changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 1419
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 1445
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1446
    return-void

    .line 1439
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
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
    .line 1469
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
    .line 1360
    return-void
.end method

.method public showPasswordIfNeccesary(Z)V
    .locals 2
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hasPasswordFieldis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1476
    return-void

    .line 1472
    :cond_0
    const/16 v0, 0x80

    goto :goto_0

    .line 1478
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no password field!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updatePassword()V
    .locals 3

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f1200a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1489
    .local v0, "passwdView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f120438

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1494
    return-void

    .line 1489
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method
