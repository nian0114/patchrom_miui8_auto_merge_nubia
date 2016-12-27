.class public Lcom/android/settings_ex/schpwronoff/DaysSelectionView;
.super Landroid/widget/ScrollView;
.source "DaysSelectionView.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private mCheckBox:[Landroid/widget/CheckBox;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "daysOfWeek"    # Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEEE"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;

    .line 48
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mLayout:Landroid/widget/LinearLayout;

    .line 49
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p2}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v3

    .line 51
    .local v3, "daysArray":[Z
    if-eqz v3, :cond_1

    .line 52
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 53
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_0

    .line 54
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;

    sget-object v8, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 52
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;

    sget-object v8, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 61
    .end local v4    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 64
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget-object v7, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    array-length v7, v7

    new-array v7, v7, [Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mCheckBox:[Landroid/widget/CheckBox;

    .line 65
    iput-boolean v10, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDisableListeners:Z

    .line 66
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    sget-object v7, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 67
    sget-object v7, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAYS:[I

    aget v2, v7, v4

    .line 68
    .local v2, "day":I
    const v7, 0x7f0401fe

    invoke-virtual {v5, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f12004f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 71
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 72
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    new-instance v7, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;

    invoke-direct {v7, p0, v2}, Lcom/android/settings_ex/schpwronoff/DaysSelectionView$1;-><init>(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;I)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mCheckBox:[Landroid/widget/CheckBox;

    aput-object v1, v7, v4

    .line 83
    iget-object v7, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 85
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDisableListeners:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionView;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/DaysSelectionView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionView;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method


# virtual methods
.method protected onChanged(Landroid/util/SparseBooleanArray;)V
    .locals 0
    .param p1, "days"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 94
    return-void
.end method
