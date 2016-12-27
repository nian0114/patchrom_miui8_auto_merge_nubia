.class Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;
.super Ljava/lang/Object;
.source "NBMsimCardEnablerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, "newValue":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    # getter for: Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->access$000(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    # getter for: Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->access$000(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference$2;->this$0:Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    # getter for: Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->access$100(Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 123
    :cond_0
    return-void

    .line 116
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
