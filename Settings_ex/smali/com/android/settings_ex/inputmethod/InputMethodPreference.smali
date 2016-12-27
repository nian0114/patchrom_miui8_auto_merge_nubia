.class Lcom/android/settings_ex/inputmethod/InputMethodPreference;
.super Landroid/preference/nubia/CheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEnabled:Z

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mInputMethodEnableView:Landroid/view/ViewGroup;

.field private final mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "isImeEnabler"    # Z
    .param p4, "isAllowedByOrganization"    # Z
    .param p5, "onSaveListener"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mEnabled:Z

    .line 80
    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 98
    const v4, 0x7f04012e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 99
    const v4, 0x7f04012f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 101
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 102
    iput-boolean p4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 103
    iput-object p5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 104
    if-nez p3, :cond_0

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 108
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 119
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 120
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4, p2, p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 122
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    return-void

    .line 115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 120
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->onClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->inputMethodSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    .local v0, "context":Landroid/content/Context;
    iget-boolean v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v7, :cond_0

    .line 260
    const v7, 0x7f0c0655

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    :goto_0
    return-object v7

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 263
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 264
    .local v6, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, "subtypeLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 266
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 268
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const-string v7, ", "

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private inputMethodSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const v4, 0x7f0c05b7

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private isImeEnabler()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 246
    check-cast v1, Landroid/view/ViewGroup;

    .line 247
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 248
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 247
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    .line 275
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 279
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 281
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 284
    .local v2, "label":Ljava/lang/CharSequence;
    const v3, 0x7f0c05b3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 285
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 294
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 304
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 305
    return-void
.end method


# virtual methods
.method compareTo(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 6
    .param p1, "rhs"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 308
    if-ne p0, p1, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 323
    :cond_0
    :goto_0
    return v2

    .line 311
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    .local v0, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 314
    .local v1, "t1":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 315
    goto :goto_0

    .line 317
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 323
    .end local v0    # "t0":Ljava/lang/CharSequence;
    .end local v1    # "t1":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 129
    const v1, 0x7f1202eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodEnableView:Landroid/view/ViewGroup;

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodEnableView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodEnableView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mEnabled:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 137
    const v1, 0x7f1202ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "mInputMethodSettingsView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_0
    new-instance v1, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 204
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v9

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 212
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const v4, 0x7f0c05b7

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updatePreferenceViews()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    .line 232
    .local v0, "isAlwaysChecked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mEnabled:Z

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodEnableView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodEnableView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mEnabled:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 237
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    return-void

    .line 232
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
