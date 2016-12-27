.class public Lcom/android/settings_ex/wifi/WifiDialogActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "WifiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIPLayout:Landroid/view/View;

.field private mIPSummary:Landroid/widget/TextView;

.field private mIPValue:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mLevel:I

.field private mLevels:[Ljava/lang/String;

.field private mModifyBtn:Landroid/widget/Button;

.field private mModifyNetworkFlag:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyLayout:Landroid/view/View;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySummary:Landroid/widget/TextView;

.field private mProxyValue:I

.field mScanResult:Ljava/lang/String;

.field private mSecurity:I

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mWaitConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 155
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 156
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 157
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 158
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyNetworkFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/WifiDialogActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiDialogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showProxyFields()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->enableIfSubmit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/wifi/WifiDialogActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiDialogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiDialogActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showIpConfigFields()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04014b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f12004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    const v1, 0x7f120105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04014b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f12004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const v1, 0x7f120105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    return-void
.end method

.method private compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "waitConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "onConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, "flag":Z
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 807
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 808
    const/4 v3, 0x1

    .line 837
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 838
    .local v0, "cl":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 839
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 840
    .local v5, "wait":Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 842
    .local v4, "on":Ljava/lang/Object;
    const-string v6, "wapiASCert"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 843
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 844
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 845
    const/4 v3, 0x1

    .line 849
    :cond_1
    const-string v6, "wapiUserCert"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 850
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 851
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 852
    const/4 v3, 0x1

    .line 856
    :cond_2
    const-string v6, "wapiPsk"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 857
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 858
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 859
    const/4 v3, 0x1

    .line 863
    :cond_3
    const-string v6, "wapiPskType"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 864
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eq v6, v7, :cond_4

    .line 865
    const/4 v3, 0x1

    .line 870
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "on":Ljava/lang/Object;
    .end local v5    # "wait":Ljava/lang/Object;
    :cond_4
    :goto_0
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v6, :cond_5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v6, :cond_5

    .line 871
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 872
    const/4 v3, 0x1

    .line 876
    :cond_5
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 877
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 878
    const/4 v3, 0x1

    .line 882
    :cond_6
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 883
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 884
    const/4 v3, 0x1

    .line 888
    :cond_7
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 889
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 890
    const/4 v3, 0x1

    .line 894
    :cond_8
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    if-eq v6, v7, :cond_9

    .line 895
    const/4 v3, 0x1

    .line 898
    :cond_9
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v7

    if-eq v6, v7, :cond_a

    .line 899
    const/4 v3, 0x1

    .line 902
    :cond_a
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 903
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 904
    const/4 v3, 0x1

    .line 908
    :cond_b
    return v3

    .line 867
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private enableIfSubmit()V
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 647
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-object v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevels:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    aget-object v0, v0, v1

    .line 379
    :goto_0
    return-object v0

    .line 376
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevels:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 531
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    if-ne v8, v10, :cond_0

    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 533
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v11, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v8, v11, :cond_1

    .line 534
    new-instance v8, Landroid/net/StaticIpConfiguration;

    invoke-direct {v8}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 535
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 536
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v8, v9

    .line 573
    .end local v5    # "result":I
    :goto_1
    return v8

    .line 531
    :cond_0
    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 541
    :cond_1
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 542
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 543
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    if-ne v8, v10, :cond_4

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 544
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 545
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "host":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "portStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 549
    .local v3, "port":I
    const/4 v5, 0x0

    .line 551
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 552
    invoke-static {v2, v4, v1}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 556
    :goto_2
    if-nez v5, :cond_3

    .line 557
    new-instance v8, Landroid/net/ProxyInfo;

    invoke-direct {v8, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v8, v10

    .line 573
    goto :goto_1

    .line 553
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c00f8

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v8, v9

    .line 559
    goto :goto_1

    .line 561
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 562
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 563
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 564
    .local v7, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    .line 565
    goto :goto_1

    .line 567
    :cond_5
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 568
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_6

    move v8, v9

    .line 569
    goto :goto_1

    .line 571
    :cond_6
    new-instance v8, Landroid/net/ProxyInfo;

    invoke-direct {v8, v6}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private setVisibility(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_0
    return-void
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v5, 0x7f120085

    const/4 v4, 0x0

    .line 469
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 473
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 475
    const v2, 0x7f120086

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    .line 476
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 477
    const v2, 0x7f120087

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mGatewayView:Landroid/widget/TextView;

    .line 478
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 479
    const v2, 0x7f120088

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 481
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 482
    const v2, 0x7f120089

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns1View:Landroid/widget/TextView;

    .line 483
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 484
    const v2, 0x7f12008a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns2View:Landroid/widget/TextView;

    .line 485
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_4

    .line 488
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 489
    .local v1, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_4

    .line 490
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_1
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mGatewayView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_2
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 502
    .local v0, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 506
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    .end local v0    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v1    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_4
    :goto_0
    return-void

    .line 511
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 9

    .prologue
    const v8, 0x7f12007e

    const v7, 0x7f12007c

    const v6, 0x7f12007b

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 421
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 425
    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 426
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 427
    invoke-direct {p0, v7, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 428
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 429
    const v2, 0x7f12007f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 431
    const v2, 0x7f120080

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPortView:Landroid/widget/TextView;

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 433
    const v2, 0x7f120081

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 438
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_1

    .line 439
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .end local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 445
    invoke-direct {p0, v6, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 446
    invoke-direct {p0, v8, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 447
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 449
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 450
    const v2, 0x7f12007d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    .line 451
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 453
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 455
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_4
    invoke-direct {p0, v6, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 461
    invoke-direct {p0, v8, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    .line 462
    invoke-direct {p0, v7, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setVisibility(II)V

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 14
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    const v12, 0x7f0c02e3

    const v11, 0x7f0c02e1

    const/4 v10, 0x0

    .line 578
    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    if-nez v13, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v10

    .line 580
    :cond_1
    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v10, v11

    goto :goto_0

    .line 583
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 584
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_3

    move v10, v11

    .line 585
    goto :goto_0

    .line 588
    :cond_3
    const/4 v9, -0x1

    .line 590
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 591
    if-ltz v9, :cond_4

    const/16 v11, 0x20

    if-le v9, v11, :cond_5

    .line 592
    :cond_4
    const v10, 0x7f0c02e4

    goto :goto_0

    .line 594
    :cond_5
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 605
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 606
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 607
    .local v0, "addr":[B
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x1

    aput-byte v13, v0, v11

    .line 608
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 620
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 623
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 625
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns1View:Landroid/widget/TextView;

    const v13, 0x7f0c02e6

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :goto_3
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 635
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 637
    if-nez v2, :cond_a

    move v10, v12

    .line 638
    goto/16 :goto_0

    .line 595
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 597
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const v13, 0x7f0c02ec

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 614
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_7

    .line 615
    const v10, 0x7f0c02e2

    goto/16 :goto_0

    .line 617
    :cond_7
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 627
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 628
    if-nez v2, :cond_9

    move v10, v12

    .line 629
    goto/16 :goto_0

    .line 631
    :cond_9
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 640
    :cond_a
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 610
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v11

    goto :goto_2

    .line 609
    :catch_2
    move-exception v11

    goto :goto_2
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    if-nez v0, :cond_2

    .line 695
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyNetworkFlag:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyNetworkFlag:Z

    .line 707
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    .line 709
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public OnPositiveButtonClick()V
    .locals 0

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    .line 684
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->enableIfSubmit()V

    .line 664
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 669
    return-void
.end method

.method public getSecurityString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mSecurity:I

    packed-switch v0, :pswitch_data_0

    .line 401
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 387
    :pswitch_0
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_1
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_2
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :pswitch_3
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :pswitch_4
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 793
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 796
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWaitConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyNetworkFlag:Z

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWaitConfig:Landroid/net/wifi/WifiConfiguration;

    .line 802
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 738
    :goto_0
    return-void

    .line 715
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    goto :goto_0

    .line 720
    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 725
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 729
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120078 -> :sswitch_2
        0x7f120082 -> :sswitch_3
        0x7f12008c -> :sswitch_1
        0x7f12008d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    const v10, 0x7f0d005c

    const v11, 0x7f0d005b

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setThemes(II)V

    .line 200
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    check-cast v10, Lcom/android/internal/policy/PhoneWindow;

    const/4 v11, 0x1

    const v12, 0x7f0e0065

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 202
    const v10, 0x7f04001d

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setContentView(I)V

    .line 205
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 208
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_config"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 212
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mWaitConfig:Landroid/net/wifi/WifiConfiguration;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_wifiinfo"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiInfo;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_scanresult"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mScanResult:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_level"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevel:I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_state"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo$DetailedState;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_security"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mSecurity:I

    .line 221
    const v10, 0x7f120082

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPLayout:Landroid/view/View;

    .line 222
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPLayout:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v10, 0x7f120084

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPSummary:Landroid/widget/TextView;

    .line 225
    const v10, 0x7f120078

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyLayout:Landroid/view/View;

    .line 227
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyLayout:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v10, 0x7f12007a

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySummary:Landroid/widget/TextView;

    .line 232
    const v10, 0x7f12008d

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDeleteBtn:Landroid/widget/Button;

    .line 233
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v10, 0x7f12008c

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyBtn:Landroid/widget/Button;

    .line 235
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyBtn:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_6

    .line 238
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "ssid":Ljava/lang/String;
    :goto_0
    const v10, 0x7f0c0c97

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mLevels:[Ljava/lang/String;

    .line 245
    const v10, 0x7f120075

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 247
    .local v4, "group":Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v10, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 250
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v10, v11, :cond_7

    .line 252
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    .line 255
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v9

    .line 256
    .local v9, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v9, :cond_0

    iget-object v10, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v10, :cond_0

    .line 257
    const v10, 0x7f0c02ac

    iget-object v11, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 276
    .end local v9    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v10, v11, :cond_8

    .line 278
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    .line 287
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxySummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0026

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showIpConfigFields()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->showProxyFields()V

    .line 291
    const v10, 0x7f120076

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 292
    const v10, 0x7f12008b

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mSecurity:I

    if-nez v10, :cond_1

    .line 294
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mModifyBtn:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getSignalString()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "signalLevel":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 310
    const v10, 0x7f0c02a8

    invoke-direct {p0, v4, v10, v7}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 313
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v1, "SpeedAndFreqTitle":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "SpeedAndFreqSummary":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 318
    const v10, 0x7f0c02aa

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Mbps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 323
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    .line 324
    .local v3, "frequency":I
    const/4 v2, 0x0

    .line 326
    .local v2, "band":Ljava/lang/String;
    const/16 v10, 0x960

    if-lt v3, v10, :cond_a

    const/16 v10, 0x9c4

    if-ge v3, v10, :cond_a

    .line 328
    const v10, 0x7f0c0257

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_3
    if-eqz v2, :cond_4

    .line 337
    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0c02ab

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .end local v2    # "band":Ljava/lang/String;
    .end local v3    # "frequency":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->addRow(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_5
    const v10, 0x7f0c02a7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getSecurityString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 354
    return-void

    .line 240
    .end local v0    # "SpeedAndFreqSummary":Ljava/lang/StringBuilder;
    .end local v1    # "SpeedAndFreqTitle":Ljava/lang/StringBuilder;
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v7    # "signalLevel":Ljava/lang/String;
    .end local v8    # "ssid":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mScanResult:Ljava/lang/String;

    .restart local v8    # "ssid":Ljava/lang/String;
    goto/16 :goto_0

    .line 262
    .restart local v4    # "group":Landroid/view/ViewGroup;
    :cond_7
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    .line 264
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v10, :cond_0

    .line 265
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 266
    .local v5, "ipAddr":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .local v6, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v10, v5, 0xff

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 271
    const v10, 0x7f0c02ac

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 280
    .end local v5    # "ipAddr":I
    .end local v6    # "ipBuf":Ljava/lang/StringBuffer;
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v10, v11, :cond_9

    .line 282
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    goto/16 :goto_2

    .line 285
    :cond_9
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    goto/16 :goto_2

    .line 329
    .restart local v0    # "SpeedAndFreqSummary":Ljava/lang/StringBuilder;
    .restart local v1    # "SpeedAndFreqTitle":Ljava/lang/StringBuilder;
    .restart local v2    # "band":Ljava/lang/String;
    .restart local v3    # "frequency":I
    .restart local v7    # "signalLevel":Ljava/lang/String;
    :cond_a
    const/16 v10, 0x1324

    if-lt v3, v10, :cond_b

    const/16 v10, 0x170c

    if-ge v3, v10, :cond_b

    .line 331
    const v10, 0x7f0c0258

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 333
    :cond_b
    const-string v10, "WifiDialogActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected frequency "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "dialogId"    # I

    .prologue
    const v6, 0x7f0c02d0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 742
    packed-switch p1, :pswitch_data_0

    .line 787
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v10

    :goto_0
    return-object v10

    .line 744
    :pswitch_0
    new-instance v3, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 745
    .local v3, "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 746
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 749
    .end local v3    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    :pswitch_1
    new-instance v8, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    .local v8, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v0, 0x7f0a0027

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mProxyValue:I

    new-instance v2, Lcom/android/settings_ex/wifi/WifiDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity$1;-><init>(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V

    invoke-virtual {v8, v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 761
    invoke-virtual {v8, v5, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 763
    invoke-virtual {v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v10

    .line 764
    .local v10, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 767
    .end local v8    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v10    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    new-instance v9, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    .local v9, "builder2":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v0, 0x7f0a0026

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I

    new-instance v2, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;-><init>(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V

    invoke-virtual {v9, v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {v9, v5, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 780
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v11

    .local v11, "dialog2":Landroid/app/Dialog;
    move-object v10, v11

    .line 782
    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 674
    return-void
.end method
