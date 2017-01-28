.class public Lnubia/widget/NubiaSearchView;
.super Landroid/widget/LinearLayout;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaSearchView$OnCloseListener;,
        Lnubia/widget/NubiaSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NubiaSearchView"

.field public static final MAX:I = 0x63


# instance fields
.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/widget/EditText;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTotalTextView:Landroid/widget/TextView;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x301000b

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v8, Lnubia/widget/NubiaSearchView$1;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$1;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v8, Lnubia/widget/NubiaSearchView$2;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$2;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v8, Lnubia/widget/NubiaSearchView$4;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$4;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v8, Lnubia/widget/NubiaSearchView$5;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$5;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v8, Lnubia/widget/NubiaSearchView$6;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$6;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    sget-object v8, Lcn/nubia/internal/R$styleable;->NubiaSearchView:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    const v9, 0x3030028

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .local v5, "layoutResId":I
    const/4 v8, 0x1

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v8, 0x30d0069

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const v8, 0x30d0066

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    const v8, 0x30d0068

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchPlate:Landroid/view/View;

    const v8, 0x30d006c

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    const v8, 0x30d0065

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    const v8, 0x30d006d

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    const v8, 0x30d006b

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    const v8, 0x30d0067

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    const v8, 0x30d006a

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lnubia/widget/NubiaSearchView;->mSearchIconResId:I

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget v9, p0, Lnubia/widget/NubiaSearchView;->mSearchIconResId:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    new-instance v9, Lnubia/widget/NubiaSearchView$3;

    invoke-direct {v9, p0}, Lnubia/widget/NubiaSearchView$3;-><init>(Lnubia/widget/NubiaSearchView;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .local v6, "maxWidth":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    invoke-virtual {p0, v6}, Lnubia/widget/NubiaSearchView;->setMaxWidth(I)V

    :cond_0
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v7}, Lnubia/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    invoke-virtual {p0, v2}, Lnubia/widget/NubiaSearchView;->setImeOptions(I)V

    :cond_2
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    invoke-virtual {p0, v4}, Lnubia/widget/NubiaSearchView;->setInputType(I)V

    :cond_3
    const/4 v1, 0x1

    .local v1, "focusable":Z
    const/16 v8, 0xb

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v8, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v8}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$400(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$600(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Lnubia/widget/NubiaSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    invoke-interface {v1}, Lnubia/widget/NubiaSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->clearFocus()V

    invoke-direct {p0, v3}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v3}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 3

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnubia/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lnubia/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateQueryTextAppearence(Z)V

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateSubmitButton(Z)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateCloseButton()V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateSubmitArea()V

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnubia/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void

    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    if-eqz p1, :cond_1

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "hasText":Z
    :goto_0
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_3

    sget-object v1, Lnubia/widget/NubiaSearchView;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    sget-object v1, Lnubia/widget/NubiaSearchView;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 2

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    .local v0, "focused":Z
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->invalidate()V

    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateQueryTextAppearence(Z)V
    .locals 3
    .param p1, "hasText"    # Z

    .prologue
    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .local v0, "visibility":I
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    const/16 v0, 0x8

    .local v0, "visibility":I
    iget-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateTotalTextView(I)V
    .locals 7
    .param p1, "total"    # I

    .prologue
    const v6, 0x30c002e

    const/16 v4, 0x63

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-le p1, v4, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 5
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mIconified:Z

    if-eqz p1, :cond_0

    move v1, v2

    .local v1, "visCollapsed":I
    :goto_0
    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .local v0, "hasText":Z
    :goto_1
    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateSubmitButton(Z)V

    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateCloseButton()V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateSubmitArea()V

    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v2

    goto :goto_2
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iput-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lnubia/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iput-boolean v2, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lnubia/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lnubia/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_1
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_2
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .local v0, "result":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onCloseClicked()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    iput p1, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Lnubia/widget/NubiaSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaSearchView$OnCloseListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lnubia/widget/NubiaSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mQueryRefinement:Z

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setTotalTextHint(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    return-void
.end method
