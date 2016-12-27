.class Lcom/android/settings_ex/notification/ZenModeSettings$7;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$7;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$7;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mAllowConacts:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$600(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 434
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$7;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$7;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 437
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
