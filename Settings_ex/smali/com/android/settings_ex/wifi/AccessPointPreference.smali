.class public Lcom/android/settings_ex/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private mInfoBtn:Landroid/widget/ImageView;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 47
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 49
    new-array v0, v3, [I

    const v1, 0x7f01005b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0051
        0x7f0c0052
        0x7f0c0053
        0x7f0c0054
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 235
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AccessPointPreference$2;-><init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 75
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 76
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 77
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgePadding:I

    .line 78
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 235
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AccessPointPreference$2;-><init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 84
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 85
    iput-object p3, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 87
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgePadding:I

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->refresh()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/AccessPointPreference;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/AccessPointPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-object v0
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const v1, 0x7f120075

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mInfoBtn:Landroid/widget/ImageView;

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mInfoBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings_ex/wifi/AccessPointPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 121
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 227
    return-void
.end method

.method public refresh()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v4, :cond_4

    .line 173
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 180
    .local v2, "level":I
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    if-eq v2, v4, :cond_0

    .line 181
    iput v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    .line 182
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->notifyChanged()V

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 191
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v4, :cond_5

    .line 192
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 207
    new-array v4, v9, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    const-string v5, ","

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 209
    :cond_2
    if-ltz v2, :cond_3

    sget-object v4, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 210
    new-array v4, v9, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    const-string v5, ","

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 213
    :cond_3
    return-void

    .line 175
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "level":I
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "level":I
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "summary":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0246

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color=\"#76b34d\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "html":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    .end local v1    # "html":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 160
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    # invokes: Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;->access$100(Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 166
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_1
.end method
