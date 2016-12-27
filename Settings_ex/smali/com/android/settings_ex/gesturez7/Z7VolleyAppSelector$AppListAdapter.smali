.class Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Z7VolleyAppSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    .line 208
    invoke-direct {p0, p2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, "appinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 212
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v4, "pkgs: com.android.timemanager com.android.settings com.android.gallery3d com.mobile.mycloud com.android.strengthenmusic com.android.phone nubia.mms com.android.contacts com.android.browser com.android.calendar2 com.android.email nubia.userbible com.ztemt.thememanager cn.nubia.powermanage cn.nubia.xxss cn.nubia.launcher com.android.systemui cn.nubia.biglaunchercom.qihoo360.mobilesafe com.sina.weibo com.tencent.mobileqq com.tencent.mm nubia.wallpaper com.jingdong.app.mall com.dolphin.browser.xf com.ifeng.news2 cn.nubia.music.preset nubia.control com.zte.phonemanualintegrate cn.nubia.zbiglauncher.preset"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 215
    :cond_1
    const-string v4, "pkgs: cn.nubia.bleobj cn.nubia.nfctag android nubia cn.nubia.zquicksearchbox com.android.contacts com.android.phone com.android.systemui nubia.qr_codescan com.uei.quicksetsdk.zte"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    new-instance v3, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    invoke-direct {v3, p1}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)V

    .line 220
    .local v3, "info":Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    iput-object v0, v3, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 221
    invoke-virtual {p1}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 222
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->sDisplayNameComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$000()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 227
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    if-nez p2, :cond_0

    .line 232
    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    invoke-virtual {v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 234
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401d9

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 237
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    .line 238
    .local v2, "info":Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    const v5, 0x7f120412

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 240
    .local v3, "volleyCb":Landroid/widget/CheckBox;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    :goto_0
    new-instance v5, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;-><init>(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    const v5, 0x7f120410

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 280
    .local v4, "volleyIcon":Landroid/widget/ImageView;
    iget-object v5, v2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    invoke-virtual {v6}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    const v5, 0x7f120411

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    .local v0, "appName":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-object p2

    .line 244
    .end local v0    # "appName":Landroid/widget/TextView;
    .end local v4    # "volleyIcon":Landroid/widget/ImageView;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
