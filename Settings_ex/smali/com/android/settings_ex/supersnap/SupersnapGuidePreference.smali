.class public Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;
.super Landroid/preference/Preference;
.source "SupersnapGuidePreference.java"


# static fields
.field private static FEATURE_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "cn.nubia.fingerprintsupersnap"

    sput-object v0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->FEATURE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private isZnLauageLocal()Z
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setInstructionImage(Landroid/widget/ImageView;II)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "znImageId"    # I
    .param p3, "enImageId"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->isZnLauageLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const-string v19, "asas"

    const-string v20, "onCreateView"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 52
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f0401ac

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 54
    .local v18, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 56
    .local v17, "resources":Landroid/content/res/Resources;
    const v19, 0x7f0c0e4f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "quickPress":Ljava/lang/String;
    const v19, 0x7f0c0e50

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 58
    .local v13, "quickPressIntroduction":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 60
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v15, "quickPressStyle":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 62
    .local v14, "quickPressStart":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int v12, v14, v19

    .line 63
    .local v12, "quickPressEnd":I
    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const v20, 0x7f0e006d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v14, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 64
    const v19, 0x7f1203cc

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 65
    .local v16, "quickPressTextView":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v19, 0x7f0c0e4c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "longPress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->pm:Landroid/content/pm/PackageManager;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->FEATURE_NAME:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 72
    const v19, 0x7f0c0e4e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "longPressIntroduction":Ljava/lang/String;
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 79
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v8, "longPressStyle":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, "longPressStart":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int v5, v7, v19

    .line 82
    .local v5, "longPressEnd":I
    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const v20, 0x7f0e006d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v7, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    const v19, 0x7f1203cd

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 84
    .local v9, "longPressTextView":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v19, 0x7f1203ce

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 86
    .local v10, "mImageView":Landroid/widget/ImageView;
    const v19, 0x7f02035c

    const v20, 0x7f02035d

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings_ex/supersnap/SupersnapGuidePreference;->setInstructionImage(Landroid/widget/ImageView;II)V

    .line 87
    return-object v18

    .line 75
    .end local v5    # "longPressEnd":I
    .end local v6    # "longPressIntroduction":Ljava/lang/String;
    .end local v7    # "longPressStart":I
    .end local v8    # "longPressStyle":Landroid/text/SpannableStringBuilder;
    .end local v9    # "longPressTextView":Landroid/widget/TextView;
    .end local v10    # "mImageView":Landroid/widget/ImageView;
    :cond_0
    const v19, 0x7f0c0e4d

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "longPressIntroduction":Ljava/lang/String;
    goto :goto_0
.end method
