.class public Landroid/preference/nubia/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/nubia/SwitchPreference$1;,
        Landroid/preference/nubia/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/preference/nubia/SwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    new-instance v0, Landroid/preference/nubia/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/nubia/SwitchPreference$Listener;-><init>(Landroid/preference/nubia/SwitchPreference;Landroid/preference/nubia/SwitchPreference$1;)V

    iput-object v0, p0, Landroid/preference/nubia/SwitchPreference;->mListener:Landroid/preference/nubia/SwitchPreference$Listener;

    .line 31
    return-void
.end method

.method static synthetic access$100(Landroid/preference/nubia/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/nubia/SwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/preference/nubia/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 49
    sget v2, Lcn/nubia/commonui/R$id;->nubia_switchWidget:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 52
    instance-of v2, v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 53
    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 54
    .local v1, "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    :cond_0
    move-object v2, v0

    .line 56
    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/nubia/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 57
    instance-of v2, v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 58
    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 59
    .restart local v1    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    iget-object v2, p0, Landroid/preference/nubia/SwitchPreference;->mListener:Landroid/preference/nubia/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    .end local v1    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    :cond_1
    return-void
.end method
