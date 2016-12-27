.class public Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;
.super Landroid/app/Fragment;
.source "SpellCheckerLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$CheckedItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 22
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    .line 84
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 83
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const v0, 0x7f0c05e3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v12, 0x7f040131

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 37
    .local v11, "view":Landroid/view/View;
    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 38
    .local v8, "list":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 39
    .local v3, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v4

    .line 41
    .local v4, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v11

    .line 45
    :cond_1
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    .line 46
    .local v10, "subtypeCount":I
    add-int/lit8 v12, v10, 0x1

    new-array v7, v12, [Ljava/lang/CharSequence;

    .line 47
    .local v7, "items":[Ljava/lang/CharSequence;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v7, v12

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "checkedItemId":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    if-ge v5, v10, :cond_3

    .line 50
    invoke-virtual {v3, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 51
    .local v9, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v5}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v6

    .line 52
    .local v6, "itemId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v7, v6

    .line 53
    invoke-virtual {v9, v4}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 54
    move v2, v6

    .line 49
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    .end local v6    # "itemId":I
    .end local v9    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 58
    new-instance v12, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$CheckedItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f040173

    const v15, 0x1020016

    invoke-direct {v12, v13, v14, v15, v7}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 60
    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 61
    new-instance v12, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
