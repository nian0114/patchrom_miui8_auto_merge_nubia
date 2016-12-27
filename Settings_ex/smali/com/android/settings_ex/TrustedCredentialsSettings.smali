.class public Lcom/android/settings_ex/TrustedCredentialsSettings;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsSettings$6;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private certDialog:Landroid/app/Dialog;

.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabsAadpter:Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;

.field private mUserManager:Landroid/os/UserManager;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;

    .line 858
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .param p2, "x2"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addCertChain(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 830
    .local v4, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 832
    .local v11, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    .line 833
    .local v13, "service":Landroid/security/IKeyChainService;
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 834
    .local v6, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 835
    .local v12, "n":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 837
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    .line 838
    .local v7, "encodedCertificate":[B
    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 839
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 841
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "encodedCertificate":[B
    .end local v9    # "i":I
    .end local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v12    # "n":I
    .end local v13    # "service":Landroid/security/IKeyChainService;
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v8

    .line 842
    .local v8, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string v14, "TrustedCredentialsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException while retrieving certificate chain for root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$3500(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    .end local v8    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 846
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v12    # "n":I
    .restart local v13    # "service":Landroid/security/IKeyChainService;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 847
    .restart local v3    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    move-object v4, v5

    .line 849
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2

    .line 841
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 854
    .local v0, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method private addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabsAadpter:Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 283
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    .line 284
    .local v0, "adapter":Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    new-instance v2, Lcom/android/settings_ex/TrustedCredentialsSettings$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 258
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 262
    return-void
.end method

.method private dismissDialogIfNeed()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    .line 742
    :cond_0
    return-void
.end method

.method private getViewForCertificate(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 705
    if-nez p3, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 707
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0401c5

    invoke-virtual {v1, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 708
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    .line 709
    .local v0, "holder":Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    const v2, 0x7f1203e1

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2502(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 711
    const v2, 0x7f1203e2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2602(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 713
    const v2, 0x7f1203e3

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2702(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 715
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 719
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2500(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$2800(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2600(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$3000(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v5

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 723
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_config_credentials"

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 726
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 728
    :cond_0
    return-object p3

    .line 717
    .end local v0    # "holder":Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    :cond_2
    move v2, v4

    .line 722
    goto :goto_1

    :cond_3
    move v3, v4

    .line 723
    goto :goto_2
.end method

.method public static isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 902
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 17
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 744
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v4, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v4, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v13, 0x10404aa

    invoke-virtual {v4, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 747
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v12, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v11, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addCertChain(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 751
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x1090008

    invoke-direct {v2, v13, v14, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 754
    .local v2, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v13, 0x1090009

    invoke-virtual {v2, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 755
    new-instance v10, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 756
    .local v10, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 757
    new-instance v13, Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/settings_ex/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 769
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 770
    .local v6, "container":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 771
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 773
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 774
    .local v5, "certificateView":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 775
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 777
    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 779
    .end local v5    # "certificateView":Landroid/view/View;
    :cond_1
    invoke-virtual {v4, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 780
    const v13, 0x104000a

    new-instance v14, Lcom/android/settings_ex/TrustedCredentialsSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$4;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V

    invoke-virtual {v4, v13, v14}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 785
    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    .line 787
    const v13, 0x102039c

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 788
    .local v3, "body":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 789
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f0401c6

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v3, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 792
    .local v9, "removeButton":Landroid/widget/Button;
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v14, "no_config_credentials"

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v13, v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 794
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 796
    :cond_2
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v13

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v13, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setText(I)V

    .line 797
    new-instance v13, Lcom/android/settings_ex/TrustedCredentialsSettings$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$5;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TrustedCredentialsSettings;->certDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 823
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x5c

    return v0
.end method

.method public getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 895
    invoke-static {}, Lcom/android/settings_ex/TrustedCredentialsSettings;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 898
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 201
    .local v2, "mDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "TrustedCredentialsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    .line 203
    .local v1, "mActivity":Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
    const-string v3, "TrustedCredentialsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 207
    .local v0, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    .line 208
    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .end local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 220
    return-void

    .line 211
    .restart local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Errors: getDrawable() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_1
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Errors: getSupportActionBar() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_2
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Errors: getActivity() is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 225
    const v0, 0x7f0401c7

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    const v1, 0x1020013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mPagerTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 228
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabsAadpter:Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;

    .line 229
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 231
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mPagerTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mPagerTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;

    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->dismissDialogIfNeed()V

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 246
    .local v0, "aliasLoader":Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 248
    .end local v0    # "aliasLoader":Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 253
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 254
    return-void
.end method
