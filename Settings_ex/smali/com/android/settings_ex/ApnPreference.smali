.class public Lcom/android/settings_ex/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mApnReadOnly:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x7f01002e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    .line 44
    new-array v1, v1, [I

    const v2, 0x301000e

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ApnPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f1200ac

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "widget":Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 69
    check-cast v2, Landroid/widget/RadioButton;

    .line 70
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_5

    .line 71
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    .local v1, "isChecked":Z
    if-eqz v1, :cond_0

    .line 75
    sput-object v2, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 79
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 80
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 82
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 88
    .end local v1    # "isChecked":Z
    .end local v2    # "rb":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v6, 0x7f1200ab

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, "textLayout":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 90
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_6

    move-object v6, p0

    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 92
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    :cond_2
    const v6, 0x7f1200ad

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .local v0, "apnInfo":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 96
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_3

    move-object v7, p0

    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 98
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 99
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_4
    return-object v4

    .line 84
    .end local v0    # "apnInfo":Landroid/widget/ImageView;
    .end local v3    # "textLayout":Landroid/view/View;
    .restart local v2    # "rb":Landroid/widget/RadioButton;
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "rb":Landroid/widget/RadioButton;
    .restart local v3    # "textLayout":Landroid/view/View;
    :cond_6
    move-object v6, v7

    .line 90
    goto :goto_1

    .line 99
    .restart local v0    # "apnInfo":Landroid/widget/ImageView;
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/ApnPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p2, :cond_2

    .line 122
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    :cond_1
    sput-object p1, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_2
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 130
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    if-eqz p1, :cond_1

    const v5, 0x7f1200ad

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "pos":I
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 140
    .local v4, "url":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "DISABLE_EDITOR"

    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":I
    .end local v4    # "url":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    if-eqz p1, :cond_0

    const v5, 0x7f1200ab

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 145
    const v5, 0x7f1200ac

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 146
    .local v3, "rb":Landroid/widget/RadioButton;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 152
    return-void
.end method
