.class Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
.super Landroid/preference/Preference;
.source "NBMsimCardEnablerPreference.java"


# instance fields
.field private mCardName:Landroid/widget/TextView;

.field private mCardnetType:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDataNetType:I

.field private mIsVirtualCard:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSlotId:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardID"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;-><init>(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 112
    new-instance v0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;-><init>(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mSlotId:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private getCardDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 131
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    .line 132
    .local v0, "cardDrawable":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_ONE_STATE:[I

    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_TWO_STATE:[I

    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    return-object v0
.end method

.method private getNetwork(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const v3, 0x7f0c0c4f

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "network":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mDataNetType:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 142
    .local v1, "networkClass":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0c50

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0c51

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setCardView(Ljava/lang/String;)V
    .locals 4
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xd

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardnetType:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardnetType:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardnetType:Landroid/widget/TextView;

    sget-object v2, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_TEXT_COLOR:[I

    iget v3, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardnetType:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f12004f

    .line 54
    const v4, 0x7f120222

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "cardView":Landroid/view/View;
    const v4, 0x7f120224

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 56
    .local v3, "statusIcon":Landroid/widget/ImageView;
    const v4, 0x7f120225

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f120227

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "cardState":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_TEXT_COLOR:[I

    iget v6, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardName:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mSlotId:I

    if-nez v4, :cond_0

    const v4, 0x7f0c0c4d

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->getCardDrawable()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "cardDrawable":[Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mSlotId:I

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v4, 0x7f120226

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCardnetType:Landroid/widget/TextView;

    .line 64
    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mSlotId:I

    invoke-direct {p0, v4}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->getNetwork(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setCardView(Ljava/lang/String;)V

    .line 65
    iget-boolean v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mIsVirtualCard:Z

    if-nez v4, :cond_1

    .line 66
    sget-object v4, Lcom/android/settings_ex/msim/NBCardConstans;->STRING_CARD_STATE:[I

    iget v5, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    .line 68
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 69
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 70
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :goto_1
    return-void

    .line 59
    .end local v0    # "cardDrawable":[Landroid/graphics/drawable/Drawable;
    :cond_0
    const v4, 0x7f0c0c4e

    goto :goto_0

    .line 75
    .restart local v0    # "cardDrawable":[Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v4, Lcom/android/settings_ex/msim/NBCardConstans;->STRING_CARD_STATE:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    .line 77
    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 78
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mChecked:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->notifyChanged()V

    .line 193
    :cond_0
    return-void
.end method

.method public setPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "preferenceListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 186
    return-void
.end method

.method public switchToVirtualCard(Z)V
    .locals 1
    .param p1, "virtualCard"    # Z

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mIsVirtualCard:Z

    if-eq v0, p1, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mIsVirtualCard:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->notifyChanged()V

    .line 181
    :cond_0
    return-void
.end method

.method public updateCardView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 91
    iput p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mState:I

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->notifyChanged()V

    .line 94
    :cond_0
    return-void
.end method

.method public updateDataNetType(I)V
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mDataNetType:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mDataNetType:I

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->notifyChanged()V

    .line 174
    :cond_0
    return-void
.end method
