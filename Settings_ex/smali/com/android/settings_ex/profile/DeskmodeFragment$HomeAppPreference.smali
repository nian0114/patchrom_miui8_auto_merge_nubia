.class Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
.super Landroid/preference/Preference;
.source "DeskmodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/DeskmodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field mActivityName:Landroid/content/ComponentName;

.field private mFragment:Lcom/android/settings_ex/profile/DeskmodeFragment;

.field private mIndex:I

.field mIsChecked:Z

.field private mIsSystem:Z

.field private mModeIcon:Landroid/graphics/drawable/Drawable;

.field private mModeSummary:Ljava/lang/CharSequence;

.field private mModeTitle:Ljava/lang/CharSequence;

.field private mUninstallTarget:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/profile/DeskmodeFragment;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ex/profile/DeskmodeFragment;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "i"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "summary"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Lcom/android/settings_ex/profile/DeskmodeFragment;
    .param p9, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    .line 263
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 264
    const v0, 0x7f040125

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->setLayoutResource(I)V

    .line 265
    iput-object p5, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeIcon:Landroid/graphics/drawable/Drawable;

    .line 266
    iput-object p6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeTitle:Ljava/lang/CharSequence;

    .line 267
    iput-object p7, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeSummary:Ljava/lang/CharSequence;

    .line 268
    iput-object p3, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mActivityName:Landroid/content/ComponentName;

    .line 269
    iput-object p8, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mFragment:Lcom/android/settings_ex/profile/DeskmodeFragment;

    .line 270
    iput p4, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIndex:I

    .line 272
    invoke-direct {p0, p9}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 273
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 278
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 279
    .local v5, "meta":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 280
    const-string v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 283
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # getter for: Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$400(Lcom/android/settings_ex/profile/DeskmodeFragment;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 284
    .local v4, "match":I
    if-ltz v4, :cond_1

    .line 285
    iget-object v8, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # getter for: Lcom/android/settings_ex/profile/DeskmodeFragment;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$400(Lcom/android/settings_ex/profile/DeskmodeFragment;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 286
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 287
    .local v0, "altFlags":I
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v6

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsSystem:Z

    .line 288
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mUninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "altFlags":I
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :goto_1
    return-void

    .restart local v0    # "altFlags":I
    .restart local v1    # "altHomePackage":Ljava/lang/String;
    .restart local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "match":I
    :cond_0
    move v8, v7

    .line 287
    goto :goto_0

    .line 291
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "DeskmodeFragmentNew"

    const-string v9, "Unable to compare/resolve alternate"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsSystem:Z

    .line 299
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mUninstallTarget:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v6, v7

    .line 298
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 306
    const v6, 0x7f1202d4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 307
    .local v2, "radio":Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsChecked:Z

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 309
    const v6, 0x7f1202d3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 310
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const v6, 0x7f1202d6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 313
    .local v4, "title":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const v6, 0x7f1202d7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 316
    .local v3, "summary":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeSummary:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 317
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mModeSummary:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIndex:I

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 323
    .local v1, "indexObj":Ljava/lang/Integer;
    const v6, 0x7f1202d2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 324
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    iget-object v6, v6, Lcom/android/settings_ex/profile/DeskmodeFragment;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsChecked:Z

    if-eq p1, v0, :cond_0

    .line 330
    iput-boolean p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsChecked:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->notifyChanged()V

    .line 333
    :cond_0
    return-void
.end method
