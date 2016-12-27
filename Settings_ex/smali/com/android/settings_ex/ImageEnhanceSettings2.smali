.class public Lcom/android/settings_ex/ImageEnhanceSettings2;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "ImageEnhanceSettings2.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mCoolTone:Landroid/widget/RadioButton;

.field private mHueRadioGroup:Landroid/widget/RadioGroup;

.field private mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

.field private mImageEnhanceTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

.field private mImprove:Landroid/widget/RadioButton;

.field private mNaturalTone:Landroid/widget/RadioButton;

.field private mNormal:Landroid/widget/RadioButton;

.field private mSaturRadioGroup:Landroid/widget/RadioGroup;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPagerAdapter:Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;

.field private mWarmTone:Landroid/widget/RadioButton;

.field private mWeak:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioGroup;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioGroup;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ImageEnhanceSettings2;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ImageEnhanceSettings2;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mTabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method public static isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
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


# virtual methods
.method public getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    invoke-static {}, Lcom/android/settings_ex/ImageEnhanceSettings2;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    rsub-int/lit8 p1, p1, 0x1

    .line 125
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method public initLandView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    const v2, 0x7f12006c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    .line 84
    const v2, 0x7f120071

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;

    .line 86
    const v2, 0x7f12006d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;

    .line 87
    const v2, 0x7f12006e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;

    .line 88
    const v2, 0x7f12006f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;

    .line 89
    const-string v2, "persist.sys.image.enhance"

    const-string v3, "w"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "saturationType":Ljava/lang/String;
    const-string v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImprove:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    :cond_0
    :goto_0
    const v2, 0x7f120072

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;

    .line 99
    const v2, 0x7f120073

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;

    .line 100
    const v2, 0x7f120074

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;

    .line 102
    const-string v2, "persist.sys.image.colortmp"

    const-string v3, "n"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "hueType":Ljava/lang/String;
    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mCoolTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 112
    return-void

    .line 92
    .end local v0    # "hueType":Ljava/lang/String;
    :cond_2
    const-string v2, "n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v2, "w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWeak:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 105
    .restart local v0    # "hueType":Ljava/lang/String;
    :cond_4
    const-string v2, "n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mNaturalTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 107
    :cond_5
    const-string v2, "w"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mWarmTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public initTabTitles()V
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mTabTitles:[Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mTabTitles:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mTabTitles:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    return-void
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f12006a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

    .line 71
    const v0, 0x7f12035a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .line 73
    new-instance v0, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;-><init>(Lcom/android/settings_ex/ImageEnhanceSettings2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mViewPagerAdapter:Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mViewPagerAdapter:Lcom/android/settings_ex/ImageEnhanceSettings2$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceContent:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mImageEnhanceTab:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings2;->mHueRadioGroup:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lai-onCheckedChanged--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    packed-switch p2, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_1
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_2
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    const v0, 0x7f12006f

    if-ne p2, v0, :cond_2

    .line 269
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    const v0, 0x7f12006e

    if-ne p2, v0, :cond_3

    .line 271
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    const v0, 0x7f12006d

    if-ne p2, v0, :cond_0

    .line 273
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "i"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x7f120072
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x1

    const v2, 0x7f0e0065

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->initLandView()V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->initTabTitles()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings2;->initView()V

    goto :goto_0
.end method
