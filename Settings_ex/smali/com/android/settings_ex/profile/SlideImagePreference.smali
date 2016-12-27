.class public Lcom/android/settings_ex/profile/SlideImagePreference;
.super Landroid/preference/Preference;
.source "SlideImagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profile/SlideImagePreference$1;,
        Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;,
        Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;
    }
.end annotation


# instance fields
.field private imageViews:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/profile/SlideImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/profile/SlideImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/profile/SlideImagePreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/SlideImagePreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SlideImagePreference;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/SlideImagePreference;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profile/SlideImagePreference;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private isZnLauageLocal()Z
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/SlideImagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 110
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 114
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSingleHelpImage(Landroid/widget/ImageView;II)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "znImageId"    # I
    .param p3, "enImageId"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/profile/SlideImagePreference;->isZnLauageLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 48
    .local v11, "inflater":Landroid/view/LayoutInflater;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    .line 49
    const v24, 0x7f04018f

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 50
    .local v14, "pressBtnOpenView":Landroid/view/View;
    const v24, 0x7f120384

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v6, v24

    check-cast v6, Landroid/widget/ImageView;

    .line 51
    .local v6, "imagePressBtnOpen":Landroid/widget/ImageView;
    const v24, 0x7f02033d

    const v25, 0x7f020342

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->setSingleHelpImage(Landroid/widget/ImageView;II)V

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const v24, 0x7f04018f

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 56
    .local v13, "pressBtnCloseView":Landroid/view/View;
    const v24, 0x7f120384

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v5, v24

    check-cast v5, Landroid/widget/ImageView;

    .line 57
    .local v5, "imagePressBtnClose":Landroid/widget/ImageView;
    const v24, 0x7f120382

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v20, v24

    check-cast v20, Landroid/widget/TextView;

    .line 58
    .local v20, "title":Landroid/widget/TextView;
    const v24, 0x7f0c0cac

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v24, 0x7f120383

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v17, v24

    check-cast v17, Landroid/widget/TextView;

    .line 60
    .local v17, "smallTitle":Landroid/widget/TextView;
    const v24, 0x7f0c0caf

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v24, 0x7f02033e

    const v25, 0x7f020343

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v5, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->setSingleHelpImage(Landroid/widget/ImageView;II)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const v24, 0x7f040190

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 66
    .local v15, "pressChangeView":Landroid/view/View;
    const v24, 0x7f120386

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v7, v24

    check-cast v7, Landroid/widget/ImageView;

    .line 67
    .local v7, "imagePressChange":Landroid/widget/ImageView;
    const v24, 0x7f02033f

    const v25, 0x7f020344

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->setSingleHelpImage(Landroid/widget/ImageView;II)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const v24, 0x7f040191

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 72
    .local v12, "locationChangeView":Landroid/view/View;
    const v24, 0x7f120387

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v8, v24

    check-cast v8, Landroid/widget/ImageView;

    .line 73
    .local v8, "imageScreenLocation":Landroid/widget/ImageView;
    const v24, 0x7f020340

    const v25, 0x7f020345

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->setSingleHelpImage(Landroid/widget/ImageView;II)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const v24, 0x7f040191

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 78
    .local v16, "screenChangeView":Landroid/view/View;
    const v24, 0x7f120387

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v9, v24

    check-cast v9, Landroid/widget/ImageView;

    .line 79
    .local v9, "imageScreenScale":Landroid/widget/ImageView;
    const v24, 0x7f120385

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v19, v24

    check-cast v19, Landroid/widget/TextView;

    .line 80
    .local v19, "tileView":Landroid/widget/TextView;
    const v24, 0x7f120382

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v18, v24

    check-cast v18, Landroid/widget/TextView;

    .line 81
    .local v18, "textView":Landroid/widget/TextView;
    const v24, 0x7f0c0cb4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v24, 0x7f0c0cb2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const v24, 0x7f020341

    const v25, 0x7f020346

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference;->setSingleHelpImage(Landroid/widget/ImageView;II)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    .line 88
    const v24, 0x7f0401d8

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 89
    .local v22, "viewPictures":Landroid/view/ViewGroup;
    const v24, 0x7f12040e

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/support/v4/view/ViewPager;

    .line 90
    .local v21, "viewPager":Landroid/support/v4/view/ViewPager;
    const v24, 0x7f12040f

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 91
    .local v23, "viewPoints":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->pageViews:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v4, v0, :cond_1

    .line 92
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v10, "imageView":Landroid/widget/ImageView;
    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, 0x24

    const/16 v26, 0x10

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/16 v24, 0xa

    const/16 v25, 0x0

    const/16 v26, 0xa

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    move-object/from16 v24, v0

    aput-object v10, v24, v4

    .line 96
    if-nez v4, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    move-object/from16 v24, v0

    aget-object v24, v24, v4

    const v25, 0x7f020213

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    move-object/from16 v24, v0

    aget-object v24, v24, v4

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profile/SlideImagePreference;->imageViews:[Landroid/widget/ImageView;

    move-object/from16 v24, v0

    aget-object v24, v24, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profile/SlideImagePreference;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020211

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 103
    .end local v10    # "imageView":Landroid/widget/ImageView;
    :cond_1
    new-instance v24, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference$SUhelpPageAdapter;-><init>(Lcom/android/settings_ex/profile/SlideImagePreference;Lcom/android/settings_ex/profile/SlideImagePreference$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    new-instance v24, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/profile/SlideImagePreference$SUslidePageChangeListener;-><init>(Lcom/android/settings_ex/profile/SlideImagePreference;Lcom/android/settings_ex/profile/SlideImagePreference$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    return-object v22
.end method
