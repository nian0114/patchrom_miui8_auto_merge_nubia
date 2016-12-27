.class Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;
.super Landroid/preference/PreferenceGroup;
.source "PrefsGroup.java"


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private managelistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const v0, 0x7f0400e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->setLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onBindView(Landroid/view/View;)V

    .line 37
    const v0, 0x7f12025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->mButton:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->mButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->managelistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public setmanageListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/PrefsGroup;->managelistener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method
