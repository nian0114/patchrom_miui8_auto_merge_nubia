.class public Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeDowntimeDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private mCheckBox:[Landroid/widget/CheckBox;

.field private final mDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

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

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "days"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "EEEE"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    .line 52
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 53
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->addView(Landroid/view/View;)V

    .line 54
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    aget v7, p2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 63
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    new-array v6, v6, [Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mCheckBox:[Landroid/widget/CheckBox;

    .line 64
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 65
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v2, v6, v3

    .line 66
    .local v2, "day":I
    const v6, 0x7f0401fe

    invoke-virtual {v4, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f12004f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 69
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    :goto_2
    new-instance v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;-><init>(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;I)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mCheckBox:[Landroid/widget/CheckBox;

    aput-object v1, v6, v3

    .line 91
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 93
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->getSelectDays()[I

    move-result-object v0

    return-object v0
.end method

.method private final getSelectDays()[I
    .locals 6

    .prologue
    .line 110
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const/4 v1, 0x0

    .line 122
    :cond_0
    return-object v1

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 114
    .local v1, "days":[I
    const/4 v3, 0x0

    .line 115
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 116
    sget-object v4, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v0, v4, v2

    .line 117
    .local v0, "day":I
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 118
    aput v0, v1, v3

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0
    .param p1, "days"    # [I

    .prologue
    .line 127
    return-void
.end method

.method public updateCheckBoxState([I)V
    .locals 4
    .param p1, "days"    # [I

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z

    .line 103
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mCheckBox:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Ljava/util/List;

    sget-object v3, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z

    .line 107
    return-void
.end method
