.class public Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;
.super Landroid/app/Fragment;
.source "Z7VolleyAppSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;,
        Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Landroid/widget/ListView;

.field private mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private mListAdapter:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mType:I

.field private mValidListener:Z

.field private mVolleyBuilder:Ljava/lang/StringBuilder;

.field private mVolleySettings:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;

    invoke-direct {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleyBuilder:Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mValidListener:Z

    .line 203
    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleyBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private initUi()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mType:I

    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7GestureKeys;->getKeyByType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->switchBarSummary()V

    .line 118
    return-void
.end method

.method private switchBarSummary()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1036

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1047

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 157
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 158
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 159
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 160
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0401fa

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 161
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1200d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->textView:Landroid/widget/TextView;

    .line 163
    const-string v4, ""

    .line 164
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c102a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c1029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_2

    .line 173
    const v6, 0x7f120049

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 174
    .local v2, "image":Landroid/widget/ImageView;
    const v6, 0x7f0203a0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    .local v1, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 178
    .end local v1    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 179
    new-instance v6, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    invoke-direct {v6, p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mListAdapter:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    .line 180
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mListAdapter:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_4

    .line 181
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 185
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "volley_white_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    .line 187
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 188
    const-string v6, "pkgs: "

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    .line 190
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleyBuilder:Ljava/lang/StringBuilder;

    .line 191
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/widget/SwitchBar;->setClickable(Z)V

    .line 192
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/widget/SwitchBar;->setFocusable(Z)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->switchBarSummary()V

    .line 194
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->list:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    return-void

    .line 183
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mListAdapter:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 99
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mType:I

    .line 101
    :cond_0
    new-instance v1, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v3, 0x7f0401fb

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 85
    const v3, 0x7f120049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    .local v1, "image":Landroid/widget/ImageView;
    const v3, 0x7f0203a0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 88
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 90
    .end local v0    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    const v3, 0x7f12048a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->list:Landroid/widget/ListView;

    .line 91
    const v3, 0x7f1200d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->textView:Landroid/widget/TextView;

    .line 92
    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v2"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 303
    .local p1, "v1":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f120412

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 304
    .local v0, "check":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mValidListener:Z

    .line 135
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mValidListener:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mValidListener:Z

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->initUi()V

    .line 112
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 151
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 2
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    .line 313
    if-eqz p2, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1036

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c1047

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    goto :goto_0
.end method
