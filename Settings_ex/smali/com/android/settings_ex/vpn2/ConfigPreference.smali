.class public Lcom/android/settings_ex/vpn2/ConfigPreference;
.super Landroid/preference/Preference;
.source "ConfigPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    .line 38
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 39
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    .line 56
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    if-gez v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "types":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    .end local v1    # "types":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->notifyHierarchyChanged()V

    .line 67
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "states":[Ljava/lang/String;
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x3

    .line 71
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 74
    .local v0, "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    iget v2, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    iget v3, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    sub-int v1, v2, v3

    .local v1, "result":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 89
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 83
    .local v0, "another":Lcom/android/settings_ex/vpn2/AppPreference;
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 84
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 89
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->update()V

    .line 48
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->update()V

    .line 53
    return-void
.end method
