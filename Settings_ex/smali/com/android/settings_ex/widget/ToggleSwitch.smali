.class public Lcom/android/settings_ex/widget/ToggleSwitch;
.super Lcn/nubia/commonui/widget/NubiaSwitch;
.source "ToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;,
        Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeClickListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;

.field private mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 69
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 71
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeClickListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeClickListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;

    invoke-interface {v1}, Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;->onBeforeClicked()Z

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 91
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 60
    return-void
.end method

.method public setOnBeforeClickListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeClickListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;

    .line 64
    return-void
.end method
