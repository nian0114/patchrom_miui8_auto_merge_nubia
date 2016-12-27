.class public Lcom/android/settings_ex/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SwitchBar$SavedState;,
        Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# instance fields
.field private mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401bd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setOrientation(I)V

    .line 75
    const v0, 0x7f1203d6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0a59

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v0, 0x7f1203d7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ToggleSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 83
    new-instance v0, Lcom/android/settings_ex/widget/SwitchBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar$1;-><init>(Lcom/android/settings_ex/widget/SwitchBar;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 90
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public final getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 163
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->propagateChecked(Z)V

    .line 164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 151
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 152
    return-void

    .line 150
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 236
    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    .line 238
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 241
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 242
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->requestLayout()V

    .line 246
    return-void

    .line 242
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 228
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 229
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    .line 231
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setChecked(Z)V

    .line 103
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 114
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0a58

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 98
    return-void

    .line 97
    :cond_0
    const v0, 0x7f0c0a59

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    :cond_0
    return-void
.end method
