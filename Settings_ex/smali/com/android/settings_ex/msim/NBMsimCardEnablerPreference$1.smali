.class Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;
.super Ljava/lang/Object;
.source "NBMsimCardEnablerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isChecked()Z

    move-result v0

    .line 102
    .local v0, "wasChecked":Z
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    # getter for: Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->access$000(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    # getter for: Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->access$000(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$1;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method
