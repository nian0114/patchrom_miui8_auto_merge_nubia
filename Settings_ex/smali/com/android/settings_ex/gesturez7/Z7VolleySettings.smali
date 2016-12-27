.class public Lcom/android/settings_ex/gesturez7/Z7VolleySettings;
.super Landroid/preference/PreferenceFragment;
.source "Z7VolleySettings.java"


# instance fields
.field private backAndForwardPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field intentFilter:Landroid/content/IntentFilter;

.field private list:Landroid/widget/ListView;

.field private mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mValidListener:Z

.field private pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

.field private slideScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

.field private textView_01:Landroid/widget/TextView;

.field private textView_02:Landroid/widget/TextView;

.field private textView_03:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mValidListener:Z

    .line 57
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$1;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.MOTION_VOLLEY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->intentFilter:Landroid/content/IntentFilter;

    .line 78
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->initUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleySettings;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->showSingleDialog(I)V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-direct {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->setTotal(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_volley"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->updateZ7TouchSettingsSummary()V

    .line 160
    return-void
.end method

.method private setStyle(Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .param p1, "s"    # Landroid/text/SpannableStringBuilder;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    .local v0, "pic":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x22

    invoke-virtual {p1, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 146
    return-void
.end method

.method private setTextForSpec()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c1022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v0, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->setStyle(Landroid/text/SpannableStringBuilder;II)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_02:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method private setTotal(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->slideScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->backAndForwardPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setTotalChanged(Z)V

    .line 165
    return-void
.end method

.method private showSingleDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 204
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c102c

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c102d

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$3;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 231
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 232
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 234
    :cond_0
    return-void
.end method

.method private updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
    .param p2, "type"    # I

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const v0, 0x7f0c0a58

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const v0, 0x7f0c0a59

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateZ7TouchSettingsSummary()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->slideScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->backAndForwardPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->updatePreferenceSummary(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 180
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->addPreferencesFromResource(I)V

    .line 70
    const-string v0, "slide_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->slideScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->slideScreenPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 72
    const-string v0, "back_forward_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->backAndForwardPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->backAndForwardPreference:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setType(I)V

    .line 74
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->updateZ7TouchSettingsSummary()V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const v1, 0x7f0401fd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120491

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_01:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f120492

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_02:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f120493

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_03:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_01:Landroid/widget/TextView;

    const v2, 0x7f0c1021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->textView_03:Landroid/widget/TextView;

    const v2, 0x7f0c1023

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->setTextForSpec()V

    .line 107
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->list:Landroid/widget/ListView;

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 109
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->initUI()V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 191
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 124
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 129
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 130
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v2    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 135
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
