.class Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SUAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;Z)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isAddUserApps"    # Z

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    .line 152
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 153
    iput-object p2, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mContext:Landroid/content/Context;

    .line 154
    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->DEFAULT_ALL_APPS_PKG:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$500()[Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->strArr2list([Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$600([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    # setter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {p1, v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$402(Lcom/android/settings_ex/profile/SUAppPickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 155
    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->APPS_NEED_TO_HIDDEN_LIST:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$700()[Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->strArr2list([Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$600([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 156
    .local v3, "mAppsNeedHidden":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->ensureAllApps(Landroid/content/Context;)Ljava/util/List;
    invoke-static {p1, p2}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$800(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;)Ljava/util/List;

    .line 157
    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllInstalledApps:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$900(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 158
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$400(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    if-eqz p3, :cond_0

    .line 161
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 162
    new-instance v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    invoke-direct {v4, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V

    .line 163
    .local v4, "userAppinfo":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    iput-object v0, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 164
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v4    # "userAppinfo":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    :cond_1
    new-instance v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V

    .line 172
    .local v2, "info":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    iput-object v0, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 174
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "info":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->sDisplayNameComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1000()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    iget-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 180
    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->initCheckedApps(Landroid/content/Context;)V
    invoke-static {p1, p2}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1100(Lcom/android/settings_ex/profile/SUAppPickerFragment;Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "holder":Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 188
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040028

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 189
    new-instance v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)V

    .line 190
    .restart local v0    # "holder":Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    const v3, 0x7f1200b7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    .line 191
    const v3, 0x7f12004c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->ic:Landroid/widget/ImageView;

    .line 192
    const v3, 0x7f1200b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->appname:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    .line 200
    .local v2, "info":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    :goto_1
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;-><init>(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->ic:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->appname:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-object p2

    .line 196
    .end local v2    # "info":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    check-cast v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
    goto :goto_0

    .line 205
    .restart local v2    # "info":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    :cond_1
    iget-object v3, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
