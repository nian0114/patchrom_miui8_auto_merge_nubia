.class public Lcn/nubia/commonui/widget/tab/NubiaPagerTab;
.super Landroid/widget/HorizontalScrollView;
.source "NubiaPagerTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;
    }
.end annotation


# instance fields
.field private final TAB_MARK_MARGIN_TOP:I

.field private final TAB_MARK_WIDTH:I

.field private mActivatedColor:I

.field private mContext:Landroid/content/Context;

.field private mImgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalColor:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevSelected:I

.field private mTabStrip:Landroid/widget/LinearLayout;

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTabTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaPagerTabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput v8, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 57
    const/16 v2, 0x1b

    iput v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->TAB_MARK_WIDTH:I

    .line 58
    const/16 v2, 0x2a

    iput v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->TAB_MARK_MARGIN_TOP:I

    .line 93
    sget-object v2, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 96
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab_tabTextSize:I

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_text_size_medium_no_change:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextSize:I

    .line 100
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab_tabActivatedColor:I

    sget v3, Lcn/nubia/commonui/R$color;->nubia_activated_red:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mActivatedColor:I

    .line 104
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab_tabNormalColor:I

    sget v3, Lcn/nubia/commonui/R$color;->nubia_secondary_text_default_material_light:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mNormalColor:I

    .line 108
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v9, [[I

    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v7, [I

    aput v6, v4, v6

    aput-object v4, v3, v7

    new-array v4, v9, [I

    iget v5, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mActivatedColor:I

    aput v5, v4, v6

    iget v5, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mNormalColor:I

    aput v5, v4, v7

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 112
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setFillViewport(Z)V

    .line 116
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    iget-object v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/tab/NubiaPagerTab;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 13
    .param p1, "tabTitle"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .prologue
    const/16 v12, 0x10

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 146
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->buildMark()V

    .line 148
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 151
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 152
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_tab_textview_max_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 155
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 156
    new-instance v7, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;

    invoke-direct {v7, p0, p2}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;-><init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v7, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;

    invoke-direct {v7, p0, p2}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;-><init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    iget v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextSize:I

    if-lez v7, :cond_0

    .line 166
    iget v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_1

    .line 169
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    :cond_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v6, "textViewPara":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v2, "para":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x2a

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 182
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    :cond_2
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v4, "tabPara":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_tab_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    .local v1, "padding":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 194
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v9, v9, v1, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 195
    invoke-virtual {v5, v1, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void

    .line 197
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v9, v9, v1, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private addTabs(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 129
    iget-object v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 132
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addTab(Ljava/lang/CharSequence;I)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private buildMark()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "img":Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 141
    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_tab_mark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 253
    .end local p1    # "position":I
    :cond_0
    return p1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result p1

    .line 217
    iget v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 218
    iput p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 219
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_1

    .line 226
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result p1

    .line 230
    iget-object v3, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 231
    .local v2, "tabStripChildCount":I
    iget v3, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    if-le v2, v3, :cond_0

    .line 232
    iget-object v3, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    iget v4, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 234
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, "selectedChild":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 241
    .local v0, "scrollPos":I
    invoke-virtual {p0, v0, v6}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->smoothScrollTo(II)V

    .line 242
    iput p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 244
    .end local v0    # "scrollPos":I
    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 124
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    .line 125
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addTabs(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    return-void
.end method
