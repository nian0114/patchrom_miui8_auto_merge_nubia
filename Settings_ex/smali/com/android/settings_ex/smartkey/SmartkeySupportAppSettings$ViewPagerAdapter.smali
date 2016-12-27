.class public Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.source "SmartkeySupportAppSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 287
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 326
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # invokes: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->updateRadioStatus()V
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1000(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V

    .line 335
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mTabTitles:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1100(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 290
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 291
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040199

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 292
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f120140

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "emptyView":Landroid/view/View;
    const v5, 0x7f120396

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 295
    .local v3, "mListView":Landroid/widget/ListView;
    const v5, 0x7f120391

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 296
    .local v2, "mFastUseGroup":Landroid/widget/RadioGroup;
    if-nez p2, :cond_1

    .line 297
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mFastUseGroup:Landroid/widget/RadioGroup;
    invoke-static {v5, v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$102(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    .line 298
    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 299
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    const v5, 0x7f120392

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioNoneUse:Landroid/widget/RadioButton;
    invoke-static {v6, v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$202(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 300
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    const v5, 0x7f120393

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioPhoto:Landroid/widget/RadioButton;
    invoke-static {v6, v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$302(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 301
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    const v5, 0x7f120394

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioRecord:Landroid/widget/RadioButton;
    invoke-static {v6, v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$402(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 302
    iget-object v6, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    const v5, 0x7f120395

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mRadioFlashLight:Landroid/widget/RadioButton;
    invoke-static {v6, v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$502(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 304
    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 305
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    iget-object v5, v5, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    iget-object v5, v5, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 316
    :cond_0
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # invokes: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->initRadioStatus()V
    invoke-static {v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$900(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V

    .line 321
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4, v11}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 322
    return-object v4

    .line 307
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    new-instance v6, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    iget-object v7, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    iget-object v8, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    iget-object v9, v9, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->allAppInfo:Ljava/util/List;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;-><init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
    invoke-static {v5, v6}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$602(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;)Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    .line 308
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mAdapter:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
    invoke-static {v5}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 310
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v5, v3}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$702(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 312
    iget-object v5, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->emptyView:Landroid/view/View;
    invoke-static {v5, v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$802(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Landroid/view/View;)Landroid/view/View;

    .line 313
    invoke-virtual {v2, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # invokes: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->setHasClearCheckRadioGroup()V
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1300(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)V

    .line 366
    if-ne p2, v3, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1402(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;Z)Z

    .line 369
    :cond_0
    const-string v0, "shijian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v0, "shijian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isClearRadioRoup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1400(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-le p2, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isClearRadioRoup:Z
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1400(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1500(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_smartkey_select_app_position"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->isLongSmartKey:Z
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1500(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    sparse-switch p2, :sswitch_data_0

    .line 420
    :goto_1
    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_smartkey_select_app_position"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 385
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 388
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 391
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 394
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_short_press"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 397
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_short_press"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 401
    :cond_3
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 415
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_long_press"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 403
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 406
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 409
    :sswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 412
    :sswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # getter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1600(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartkey_long_press"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x7f120392 -> :sswitch_0
        0x7f120393 -> :sswitch_1
        0x7f120394 -> :sswitch_2
        0x7f120395 -> :sswitch_3
    .end sparse-switch

    .line 401
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_5
        0x7f120392 -> :sswitch_6
        0x7f120393 -> :sswitch_7
        0x7f120394 -> :sswitch_8
        0x7f120395 -> :sswitch_9
    .end sparse-switch
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 338
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    # setter for: Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->mPosition:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;->access$1202(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;I)I

    .line 361
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 345
    return-void
.end method
