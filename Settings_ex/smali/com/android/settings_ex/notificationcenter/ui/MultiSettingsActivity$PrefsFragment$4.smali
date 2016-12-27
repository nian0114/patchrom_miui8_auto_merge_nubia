.class Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;
.super Ljava/lang/Object;
.source "MultiSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->refreshStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

.field final synthetic val$info:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

.field final synthetic val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    iput-object p2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    iput-object p3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$info:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getLockscreen()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getAppSettingsInfo()Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v1

    or-int/lit8 v0, v1, 0x2

    .line 185
    .local v0, "temp":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getAppSettingsInfo()Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getAppSettingsInfo()Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setIsModified(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->mSelectMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->access$500(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$info:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void

    .line 182
    .end local v0    # "temp":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$4;->val$pref:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getAppSettingsInfo()Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v1

    and-int/lit8 v0, v1, 0x1d

    .restart local v0    # "temp":I
    goto :goto_0
.end method
