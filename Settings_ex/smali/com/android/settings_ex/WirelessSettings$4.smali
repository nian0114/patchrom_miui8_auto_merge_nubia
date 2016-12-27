.class Lcom/android/settings_ex/WirelessSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const-string v2, "nfc state changed..............."

    # invokes: Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x3

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 810
    const-string v1, "0"

    const-string v2, "persist.sys.remove_beam"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 814
    :cond_0
    const-string v1, "0"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 816
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # invokes: Lcom/android/settings_ex/WirelessSettings;->setEntryAndValues()V
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$200(Lcom/android/settings_ex/WirelessSettings;)V

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 818
    :cond_2
    const/4 v1, 0x4

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 820
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->androidBeam:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 821
    const-string v1, "0"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings$4;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSwitch_se:Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
