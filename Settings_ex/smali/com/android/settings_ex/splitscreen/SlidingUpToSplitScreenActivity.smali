.class public Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SlidingUpToSplitScreenActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAactionBarSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "splitscreen_slide_up"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f0400d8

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->setContentView(I)V

    .line 42
    new-instance v2, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->mAactionBarSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 45
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->mAactionBarSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v4, v4, v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setPaddingRelative(IIII)V

    .line 50
    iget-object v2, p0, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->mAactionBarSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/splitscreen/SlidingUpToSplitScreenActivity;->onBackPressed()V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 74
    return-void
.end method
