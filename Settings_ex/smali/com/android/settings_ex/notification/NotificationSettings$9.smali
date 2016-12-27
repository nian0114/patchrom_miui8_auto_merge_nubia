.class Lcom/android/settings_ex/notification/NotificationSettings$9;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->configureNubiaPreference(Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$9;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$9;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->handleRingToneClick(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2500(Lcom/android/settings_ex/notification/NotificationSettings;I)V

    .line 957
    const/4 v0, 0x1

    return v0
.end method
