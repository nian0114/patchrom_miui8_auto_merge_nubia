.class public Lcom/android/settings_ex/BottomKeyDefinitionSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BottomKeyDefinitionSettings.java"


# static fields
.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String;


# instance fields
.field private mBottomKeyView1:Landroid/view/View;

.field private mBottomKeyView2:Landroid/view/View;

.field private mBottomLayout1:Landroid/view/View;

.field private mBottomLayout2:Landroid/view/View;

.field private mRadio1:Landroid/widget/RadioButton;

.field private mRadio2:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BottomKeyDefinitionSettings;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private updateRadioGroupCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v0, "1"

    sget-object v1, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 36
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 37
    const v2, 0x7f1200de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout1:Landroid/view/View;

    .line 38
    const v2, 0x7f1200e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomLayout2:Landroid/view/View;

    .line 39
    const v2, 0x7f1200dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomKeyView1:Landroid/view/View;

    .line 40
    const v2, 0x7f1200e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomKeyView2:Landroid/view/View;

    .line 41
    const v2, 0x7f1200df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio1:Landroid/widget/RadioButton;

    .line 42
    const v2, 0x7f1200e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mRadio2:Landroid/widget/RadioButton;

    .line 43
    iget-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomKeyView1:Landroid/view/View;

    new-instance v3, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings$1;-><init>(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, p0, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->mBottomKeyView2:Landroid/view/View;

    new-instance v3, Lcom/android/settings_ex/BottomKeyDefinitionSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings$2;-><init>(Lcom/android/settings_ex/BottomKeyDefinitionSettings;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/BottomKeyDefinitionSettings;->updateRadioGroupCheck()V

    .line 95
    return-void
.end method
