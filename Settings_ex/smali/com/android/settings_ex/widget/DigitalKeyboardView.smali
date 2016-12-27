.class public Lcom/android/settings_ex/widget/DigitalKeyboardView;
.super Landroid/widget/LinearLayout;
.source "DigitalKeyboardView.java"


# instance fields
.field private enterExisted:Z

.field private mBtns:[Landroid/widget/Button;

.field private mDeleteBtn:Landroid/widget/ImageView;

.field private mDotsView:Landroid/view/View;

.field private mIdDots:[I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/R$styleable;->DigitalKeyboardView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->enterExisted:Z

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mIdDots:[I

    .line 40
    return-void

    .line 39
    :array_0
    .array-data 4
        0x7f1202c1
        0x7f1202c2
        0x7f1202c3
        0x7f1202c4
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/DigitalKeyboardView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/DigitalKeyboardView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDotsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/widget/DigitalKeyboardView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/DigitalKeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setDotsImage(IZ)V

    return-void
.end method

.method private setDotsImage(IZ)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "activated"    # Z

    .prologue
    .line 43
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDotsView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mIdDots:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz p2, :cond_2

    .line 48
    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :cond_2
    const v1, 0x7f020211

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040086

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    iget-boolean v3, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->enterExisted:Z

    if-eqz v3, :cond_0

    .line 90
    const v3, 0x7f12016b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    const/16 v3, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 98
    .local v2, "ids":[I
    array-length v3, v2

    new-array v3, v3, [Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mBtns:[Landroid/widget/Button;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 101
    move v0, v1

    .line 102
    .local v0, "digit":I
    iget-object v4, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mBtns:[Landroid/widget/Button;

    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v1

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mBtns:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;-><init>(Lcom/android/settings_ex/widget/DigitalKeyboardView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "digit":I
    :cond_1
    return-void

    .line 94
    :array_0
    .array-data 4
        0x7f120175
        0x7f12016c
        0x7f12016d
        0x7f12016e
        0x7f12016f
        0x7f120170
        0x7f120171
        0x7f120172
        0x7f120173
        0x7f120174
    .end array-data
.end method

.method public refreshDotsImage(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 55
    if-ge p1, v3, :cond_0

    .line 56
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 57
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setDotsImage(IZ)V

    .line 56
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x4

    if-le p1, v2, :cond_1

    .line 61
    const/4 v1, 0x4

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_3

    .line 62
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setDotsImage(IZ)V

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 66
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "activated":Z
    if-le v1, p1, :cond_2

    .line 69
    const/4 v0, 0x0

    .line 71
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->setDotsImage(IZ)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    .end local v0    # "activated":Z
    :cond_3
    return-void
.end method

.method public setView(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "dotsView"    # Landroid/view/View;
    .param p3, "deleteBtn"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;

    .line 122
    iput-object p2, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDotsView:Landroid/view/View;

    .line 123
    iput-object p3, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDeleteBtn:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDeleteBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDeleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;-><init>(Lcom/android/settings_ex/widget/DigitalKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDeleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/widget/DigitalKeyboardView$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/DigitalKeyboardView$3;-><init>(Lcom/android/settings_ex/widget/DigitalKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    :cond_0
    return-void
.end method
