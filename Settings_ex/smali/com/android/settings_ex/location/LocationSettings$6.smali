.class Lcom/android/settings_ex/location/LocationSettings$6;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;

.field final synthetic val$activity:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$6;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/location/LocationSettings$6;->val$activity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$6;->val$activity:Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/location/LocationRequestApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0ba9

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings$6;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 373
    const/4 v0, 0x1

    return v0
.end method
