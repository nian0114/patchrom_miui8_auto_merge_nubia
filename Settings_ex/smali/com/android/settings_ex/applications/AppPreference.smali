.class public Lcom/android/settings_ex/applications/AppPreference;
.super Landroid/preference/Preference;
.source "AppPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;
    }
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mInfo:Landroid/content/pm/ResolveInfo;

.field private mIsBlank:Ljava/lang/Boolean;

.field private mIsChecked:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Boolean;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "index"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "blank"    # Ljava/lang/Boolean;
    .param p7, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppPreference;->setLayoutResource(I)V

    .line 50
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/applications/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, p5}, Lcom/android/settings_ex/applications/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/applications/AppPreference;->mComponentName:Landroid/content/ComponentName;

    .line 56
    iput p3, p0, Lcom/android/settings_ex/applications/AppPreference;->mIndex:I

    .line 57
    iput-object p6, p0, Lcom/android/settings_ex/applications/AppPreference;->mIsBlank:Ljava/lang/Boolean;

    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppPreference;->mContext:Landroid/content/Context;

    .line 59
    iput-object p7, p0, Lcom/android/settings_ex/applications/AppPreference;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 60
    iput-object p4, p0, Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/AppPreference;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/AppPreference;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppPreference;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/AppPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/AppPreference;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/AppPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->icon:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f120051

    const/4 v5, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppPreference;->mIsBlank:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/applications/AppPreference;->setSelectable(Z)V

    .line 68
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 70
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, "r":Landroid/content/res/Resources;
    const v4, 0x7f0b0152

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 76
    .local v3, "radio":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/AppPreference;->mIsChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/settings_ex/applications/AppPreference;->mIndex:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 87
    .local v0, "indexObj":Ljava/lang/Integer;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppPreference;->mRootView:Landroid/view/View;

    .line 89
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppPreference;->mIsChecked:Z

    if-eq p1, v0, :cond_0

    .line 97
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/AppPreference;->mIsChecked:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppPreference;->notifyChanged()V

    .line 100
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method
