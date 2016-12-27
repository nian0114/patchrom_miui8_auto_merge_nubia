.class public Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;
.super Landroid/app/Activity;
.source "SplitScreenSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;
    }
.end annotation


# static fields
.field private static CHANGE_MULTI_WINDOW_ACTION:Ljava/lang/String;

.field private static MULTI_WINDOW_STATE:Ljava/lang/String;


# instance fields
.field private mGobackBtn:Landroid/widget/ImageView;

.field private mIsNeedMultiWindowLaunchFlag:Z

.field private mObserver:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;

.field private mSplitScreenModeView:Landroid/view/View;

.field private mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mSplitscreenImgView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "ss_multi_window_enabled"

    sput-object v0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->MULTI_WINDOW_STATE:Ljava/lang/String;

    .line 42
    const-string v0, "com.android.powermo.resetPowermoDisplay"

    sput-object v0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->CHANGE_MULTI_WINDOW_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mIsNeedMultiWindowLaunchFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenModeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)Lcom/android/settings_ex/widget/ToggleSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    return-object v0
.end method

.method private setStatusBarTranslucent()V
    .locals 4

    .prologue
    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/high16 v1, -0x80000000

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 112
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 114
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 117
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "splitscreen_slide_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setChecked(Z)V

    .line 149
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mIsNeedMultiWindowLaunchFlag:Z

    if-eqz v1, :cond_2

    .line 154
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->MULTI_WINDOW_STATE:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->CHANGE_MULTI_WINDOW_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "splitscreen_slide_up"

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mIsNeedMultiWindowLaunchFlag:Z

    .line 164
    return-void

    :cond_3
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0400d9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f120248

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitscreenImgView:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f12024a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ToggleSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$1;-><init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeClickListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;)V

    .line 86
    const v0, 0x7f120249

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenModeView:Landroid/view/View;

    .line 87
    const v0, 0x7f12024c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mGobackBtn:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mGobackBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$2;-><init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenModeView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;-><init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;-><init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mObserver:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->onBackPressed()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mObserver:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->stopObserving()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->updateUI()V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mObserver:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->startObserving()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->setStatusBarTranslucent()V

    .line 125
    return-void
.end method
